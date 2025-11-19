@interface JavaNioDatagramChannelImpl
- (BOOL)isConnected;
- (JavaNioDatagramChannelImpl)init;
- (id)bindWithJavaNetSocketAddress:(id)a3;
- (id)checkOpen;
- (id)checkOpenConnected;
- (id)connectWithJavaNetSocketAddress:(id)a3;
- (id)disconnect;
- (id)getLocalAddress;
- (id)getOptionWithJavaNetSocketOption:(id)a3;
- (id)receiveWithJavaNioByteBuffer:(id)a3;
- (id)setOptionWithJavaNetSocketOption:(id)a3 withId:(id)a4;
- (id)socket;
- (id)supportedOptions;
- (int)readWithJavaNioByteBuffer:(id)a3;
- (int)sendWithJavaNioByteBuffer:(id)a3 withJavaNetSocketAddress:(id)a4;
- (int)writeWithJavaNioByteBuffer:(id)a3;
- (int64_t)readWithJavaNioByteBufferArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (int64_t)writeWithJavaNioByteBufferArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)dealloc;
- (void)implCloseSelectableChannel;
- (void)onBindWithBoolean:(BOOL)a3;
- (void)onDisconnectWithBoolean:(BOOL)a3;
@end

@implementation JavaNioDatagramChannelImpl

- (JavaNioDatagramChannelImpl)init
{
  v3 = JavaNioChannelsSpiSelectorProvider_provider();
  JavaNioChannelsDatagramChannel_initWithJavaNioChannelsSpiSelectorProvider_(self, v3);
  HIBYTE(self->localAddress_) = 0;
  self->connected_ = 0;
  JreStrongAssignAndConsume((&self->localPort_ + 7), [NSObject alloc]);
  JreStrongAssignAndConsume((&self->readLock_ + 7), [NSObject alloc]);
  v4 = new_JavaIoFileDescriptor_init();
  JreStrongAssignAndConsume((&self->isBound_ + 6), v4);
  v5 = new_JavaNetInetSocketAddress_initWithInt_(0);
  JreStrongAssignAndConsume((&self->super.super.blockingLock_ + 7), v5);
  return self;
}

- (id)socket
{
  objc_sync_enter(self);
  v3 = *(&self->fd_ + 7);
  if (!v3)
  {
    v4 = new_JavaNetPlainDatagramSocketImpl_initWithJavaIoFileDescriptor_withInt_(*(&self->isBound_ + 6), *(&self->socket_ + 7));
    v5 = [JavaNioDatagramChannelImpl_DatagramSocketAdapter alloc];
    sub_100172D50(&v5->super.super.isa, v4, self);
    JreStrongAssignAndConsume((&self->fd_ + 7), v5);
    v3 = *(&self->fd_ + 7);
  }

  objc_sync_exit(self);
  return v3;
}

- (id)bindWithJavaNetSocketAddress:(id)a3
{
  objc_sync_enter(self);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (self->connected_)
  {
    v5 = new_JavaNioChannelsAlreadyBoundException_init();
LABEL_13:
    objc_exception_throw(v5);
  }

  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = new_JavaNioChannelsUnsupportedAddressTypeException_init();
      goto LABEL_13;
    }
  }

  else
  {
    if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    a3 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(JavaNetInet4Address_ANY_, 0);
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  LibcoreIoIoBridge_bindWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_(*(&self->isBound_ + 6), [a3 getAddress], objc_msgSend(a3, "getPort"));
  [(JavaNioDatagramChannelImpl *)self onBindWithBoolean:1];
  objc_sync_exit(self);
  return self;
}

- (id)checkOpen
{
  result = [a1 isOpen];
  if ((result & 1) == 0)
  {
    v2 = new_JavaNioChannelsClosedChannelException_init();
    objc_exception_throw(v2);
  }

  return result;
}

- (void)onBindWithBoolean:(BOOL)a3
{
  v3 = a3;
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v5 = [LibcoreIoLibcore_os_ getsocknameWithJavaIoFileDescriptor:*(&self->isBound_ + 6)];
  self->connected_ = 1;
  objc_opt_class();
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign((&self->connectAddress_ + 7), [v5 getAddress]);
  v6 = [v5 getPort];
  *(&self->socket_ + 7) = v6;
  if (v3)
  {
    v7 = v6;
    v8 = *(&self->fd_ + 7);
    if (v8)
    {
      v9 = *(&self->connectAddress_ + 7);

      [v8 onBindWithJavaNetInetAddress:v9 withInt:v7];
    }
  }
}

- (id)getLocalAddress
{
  objc_sync_enter(self);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (self->connected_)
  {
    v3 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(*(&self->connectAddress_ + 7), *(&self->socket_ + 7));
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(self);
  return v3;
}

- (id)getOptionWithJavaNetSocketOption:(id)a3
{
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  v5 = JavaNetStandardSocketOptions_DATAGRAM_SOCKET_OPTIONS_;

  return JavaNioNioUtils_getSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_(self, v5, a3);
}

- (id)setOptionWithJavaNetSocketOption:(id)a3 withId:(id)a4
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  JavaNioNioUtils_setSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_withId_(self, JavaNetStandardSocketOptions_DATAGRAM_SOCKET_OPTIONS_, a3, a4);
  return self;
}

- (id)supportedOptions
{
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  return JavaNetStandardSocketOptions_DATAGRAM_SOCKET_OPTIONS_;
}

- (BOOL)isConnected
{
  objc_sync_enter(self);
  localAddress_high = HIBYTE(self->localAddress_);
  objc_sync_exit(self);
  return localAddress_high;
}

- (id)connectWithJavaNetSocketAddress:(id)a3
{
  objc_sync_enter(self);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (HIBYTE(self->localAddress_) == 1)
  {
    v10 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v10);
  }

  v5 = JavaNioSocketChannelImpl_validateAddressWithJavaNetSocketAddress_(a3);
  v6 = v5;
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  v7 = [v5 getAddress];
  v8 = [v6 getPort];
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
  LibcoreIoIoBridge_connectWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_(*(&self->isBound_ + 6), v7, v8);
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:1];
  if (!self->connected_)
  {
    [(JavaNioDatagramChannelImpl *)self onBindWithBoolean:1];
  }

  [(JavaNioDatagramChannelImpl *)self onConnectWithJavaNetInetAddress:v7 withInt:v8 withBoolean:1];
  objc_sync_exit(self);
  return self;
}

- (id)disconnect
{
  objc_sync_enter(self);
  if ([(JavaNioDatagramChannelImpl *)self isConnected]&& [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self isOpen])
  {
    [(JavaNioDatagramChannelImpl *)self onDisconnectWithBoolean:1];
    if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    v3 = LibcoreIoLibcore_os_;
    if (!LibcoreIoLibcore_os_)
    {
      JreThrowNullPointerException();
    }

    v4 = *(&self->isBound_ + 6);
    if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
    {
      v6 = v4;
      v7 = v3;
      objc_opt_class();
      v4 = v6;
      v3 = v7;
    }

    [v3 connectWithJavaIoFileDescriptor:v4 withJavaNetInetAddress:JavaNetInetAddress_UNSPECIFIED_ withInt:{0, v6, v7}];
  }

  objc_sync_exit(self);
  return self;
}

- (void)onDisconnectWithBoolean:(BOOL)a3
{
  v3 = a3;
  HIBYTE(self->localAddress_) = 0;
  JreStrongAssign((&self->super.super.blockingLock_ + 7), 0);
  if (v3)
  {
    v5 = *(&self->fd_ + 7);
    if (v5)
    {
      if ([v5 isConnected])
      {
        v6 = *(&self->fd_ + 7);

        [v6 onDisconnect];
      }
    }
  }
}

- (id)receiveWithJavaNioByteBuffer:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 checkWritable];
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (!self->connected_)
  {
    return 0;
  }

  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
  v5 = *(&self->localPort_ + 7);
  objc_sync_enter(v5);
  v6 = [(JavaNioChannelsSpiAbstractSelectableChannel *)self isBlocking];
  if ([a3 isDirect])
  {
    v7 = sub_100172134(self, a3, v6);
  }

  else
  {
    v7 = sub_100171F68(self, a3, v6);
  }

  v8 = v7;
  objc_sync_exit(v5);
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:v8 != 0];
  return v8;
}

- (int)sendWithJavaNioByteBuffer:(id)a3 withJavaNetSocketAddress:(id)a4
{
  sub_100172474(a3);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  objc_opt_class();
  if (!a4)
  {
    goto LABEL_15;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (![a4 getAddress])
  {
    v20 = new_JavaIoIOException_init();
    goto LABEL_18;
  }

  if (![(JavaNioDatagramChannelImpl *)self isConnected])
  {
    goto LABEL_7;
  }

  v7 = *(&self->super.super.blockingLock_ + 7);
  if (!v7)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  if (([v7 isEqual:a4] & 1) == 0)
  {
    v22 = *(&self->super.super.blockingLock_ + 7);
    v21 = JreStrcat("$@$@", v8, v9, v10, v11, v12, v13, v14, @"Connected to ");
    v20 = new_JavaLangIllegalArgumentException_initWithNSString_(v21);
LABEL_18:
    objc_exception_throw(v20);
  }

LABEL_7:
  v15 = *(&self->readLock_ + 7);
  objc_sync_enter(v15);
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v16 = [a3 position];
  v17 = LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withJavaNioByteBuffer_withInt_withJavaNetInetAddress_withInt_(*(&self->isBound_ + 6), a3, 0, [a4 getAddress], objc_msgSend(a4, "getPort"));
  v18 = v17;
  if (v17 >= 1)
  {
    [a3 positionWithInt:v17 + v16];
  }

  if (!self->connected_)
  {
    [(JavaNioDatagramChannelImpl *)self onBindWithBoolean:1];
  }

  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:v18 >= 0];
  objc_sync_exit(v15);
  return v18;
}

- (int)readWithJavaNioByteBuffer:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 checkWritable];
  [JavaNioDatagramChannelImpl checkOpenConnected]_0(self);
  if ([a3 hasRemaining])
  {
    if (([a3 isDirect] & 1) != 0 || objc_msgSend(a3, "hasArray"))
    {
      LODWORD(self) = sub_1001725CC(self, a3);
      if (self >= 1)
      {
        [a3 positionWithInt:{objc_msgSend(a3, "position") + self}];
      }
    }

    else
    {
      v6 = +[IOSByteArray arrayWithLength:](IOSByteArray, "arrayWithLength:", [a3 remaining]);
      v7 = JavaNioByteBuffer_wrapWithByteArray_(v6);
      self = sub_1001725CC(self, v7);
      if (self >= 1)
      {
        [a3 putWithByteArray:v6 withInt:0 withInt:self];
      }
    }
  }

  else
  {
    LODWORD(self) = 0;
  }

  return self;
}

- (id)checkOpenConnected
{
  [JavaNioDatagramChannelImpl checkOpen]_0(a1);
  result = [a1 isConnected];
  if ((result & 1) == 0)
  {
    v3 = new_JavaNioChannelsNotYetConnectedException_init();
    objc_exception_throw(v3);
  }

  return result;
}

- (int64_t)readWithJavaNioByteBufferArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    goto LABEL_18;
  }

  v6 = a4;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  [JavaNioDatagramChannelImpl checkOpenConnected]_0(self);
  v9 = JavaNioFileChannelImpl_calculateTotalRemainingWithJavaNioByteBufferArray_withInt_withInt_withBoolean_(a3, v6, a5, 1);
  if (!v9)
  {
    return 0;
  }

  v17 = JavaNioByteBuffer_allocateWithInt_(v9, v10, v11, v12, v13, v14, v15, v16);
  v18 = sub_1001725CC(self, v17);
  if (!v17)
  {
    goto LABEL_18;
  }

  v19 = v18;
  v20 = [(JavaNioByteBuffer *)v17 array];
  if (v19 >= 1)
  {
    v21 = v20;
    v22 = v19;
    while (1)
    {
      v23 = *(a3 + 2);
      if (v6 < 0 || v6 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v6);
      }

      v24 = *(a3 + v6 + 3);
      if (!v24)
      {
        break;
      }

      v25 = JavaLangMath_minWithInt_withInt_([v24 remaining], v22);
      v26 = *(a3 + 2);
      if (v6 < 0 || v6 >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, v6);
      }

      v27 = *(a3 + v6 + 3);
      if (!v27)
      {
        break;
      }

      [v27 putWithByteArray:v21 withInt:(v19 - v22) withInt:v25];
      ++v6;
      v22 -= v25;
      if (v22 <= 0)
      {
        return v19;
      }
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  return v19;
}

- (int)writeWithJavaNioByteBuffer:(id)a3
{
  sub_100172474(a3);
  [JavaNioDatagramChannelImpl checkOpenConnected]_0(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if (![a3 hasRemaining])
  {
    return 0;
  }

  v5 = sub_1001728BC(self, a3);
  if (v5 >= 1)
  {
    [a3 positionWithInt:{objc_msgSend(a3, "position") + v5}];
  }

  return v5;
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  if (!a3)
  {
    goto LABEL_23;
  }

  v6 = a4;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(a3 + 2), a4, a5);
  [JavaNioDatagramChannelImpl checkOpenConnected]_0(self);
  v9 = JavaNioFileChannelImpl_calculateTotalRemainingWithJavaNioByteBufferArray_withInt_withInt_withBoolean_(a3, v6, a5, 0);
  if (!v9)
  {
    return 0;
  }

  v17 = JavaNioByteBuffer_allocateWithInt_(v9, v10, v11, v12, v13, v14, v15, v16);
  v18 = v17;
  v19 = a5 + v6;
  if (a5 + v6 > v6)
  {
    v20 = v6;
    v21 = v19;
    v22 = a3 + 8 * v6;
    while (1)
    {
      v23 = *(a3 + 2);
      if (v20 < 0 || v20 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v20);
      }

      v24 = *(v22 + 3);
      if (!v24)
      {
        break;
      }

      v25 = [*(v22 + 3) position];
      if (!v18)
      {
        break;
      }

      v26 = v25;
      [(JavaNioByteBuffer *)v18 putWithJavaNioByteBuffer:v24];
      [v24 positionWithInt:v26];
      ++v20;
      v22 += 8;
      if (v21 == v20)
      {
        goto LABEL_14;
      }
    }

LABEL_23:
    JreThrowNullPointerException();
  }

  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_14:
  [(JavaNioBuffer *)v18 flip];
  v28 = sub_1001728BC(self, v18);
  v29 = v28;
  if (v28 >= 1)
  {
    v30 = v28;
    while (1)
    {
      v31 = v6;
      v32 = *(a3 + 2);
      if (v6 < 0 || v6 >= v32)
      {
        IOSArray_throwOutOfBoundsWithMsg(v32, v6);
      }

      v33 = *(a3 + v6 + 3);
      if (!v33)
      {
        break;
      }

      v34 = JavaLangMath_minWithInt_withInt_(v30, [*(a3 + v31 + 3) remaining]);
      [v33 positionWithInt:{objc_msgSend(v33, "position") + v34}];
      v6 = v31 + 1;
      v30 = (v30 - v34);
      if (v30 <= 0)
      {
        return v29;
      }
    }

    goto LABEL_23;
  }

  return v29;
}

- (void)implCloseSelectableChannel
{
  objc_sync_enter(self);
  [(JavaNioDatagramChannelImpl *)self onDisconnectWithBoolean:1];
  LibcoreIoIoBridge_closeSocketWithJavaIoFileDescriptor_(*(&self->isBound_ + 6));
  v3 = *(&self->fd_ + 7);
  if (v3 && ([v3 isClosed] & 1) == 0)
  {
    [*(&self->fd_ + 7) onClose];
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioDatagramChannelImpl;
  [(JavaNioChannelsSpiAbstractSelectableChannel *)&v3 dealloc];
}

@end