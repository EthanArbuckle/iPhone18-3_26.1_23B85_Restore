@interface JavaNioSocketChannelImpl
- (BOOL)connectWithJavaNetSocketAddress:(id)address;
- (BOOL)finishConnect;
- (BOOL)isConnected;
- (BOOL)isConnectionPending;
- (id)bindWithJavaNetSocketAddress:(id)address;
- (id)getLocalAddress;
- (id)getOptionWithJavaNetSocketOption:(id)option;
- (id)setOptionWithJavaNetSocketOption:(id)option withId:(id)id;
- (id)socket;
- (id)supportedOptions;
- (int)readWithJavaNioByteBuffer:(id)buffer;
- (int)writeWithJavaNioByteBuffer:(id)buffer;
- (int64_t)readWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt;
- (int64_t)writeWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt;
- (uint64_t)checkOpenConnected;
- (uint64_t)checkUnconnected;
- (void)dealloc;
- (void)implCloseSelectableChannel;
- (void)onBindWithBoolean:(BOOL)boolean;
- (void)onConnectStatusChangedWithJavaNetInetSocketAddress:(id)address withInt:(int)int withBoolean:(BOOL)boolean;
@end

@implementation JavaNioSocketChannelImpl

- (id)socket
{
  objc_sync_enter(self);
  v3 = *(&self->fd_ + 7);
  if (!v3)
  {
    v4 = *(&self->socket_ + 7);
    if (v4)
    {
      getAddress = [v4 getAddress];
      getPort = [*(&self->socket_ + 7) getPort];
    }

    else
    {
      getPort = 0;
      getAddress = 0;
    }

    v7 = new_JavaNetPlainSocketImpl_initWithJavaIoFileDescriptor_withInt_withJavaNetInetAddress_withInt_(*(&self->super.super.blockingLock_ + 7), *(&self->localAddress_ + 7), getAddress, getPort);
    v8 = [JavaNioSocketChannelImpl_SocketAdapter alloc];
    sub_1001E9908(&v8->super.super.isa, v7, self);
    JreStrongAssignAndConsume((&self->fd_ + 7), v8);
    v3 = *(&self->fd_ + 7);
  }

  objc_sync_exit(self);
  return v3;
}

- (id)bindWithJavaNetSocketAddress:(id)address
{
  objc_sync_enter(self);
  if (![(JavaNioChannelsSpiAbstractInterruptibleChannel *)self isOpen])
  {
    v6 = new_JavaNioChannelsClosedChannelException_init();
    goto LABEL_15;
  }

  v5 = atomic_load(&self->status_ + 3);
  if (v5)
  {
    v6 = new_JavaNioChannelsAlreadyBoundException_init();
LABEL_15:
    objc_exception_throw(v6);
  }

  if (address)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = new_JavaNioChannelsUnsupportedAddressTypeException_init();
      goto LABEL_15;
    }
  }

  else
  {
    if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
    {
      objc_opt_class();
    }

    address = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(JavaNetInet4Address_ANY_, 0);
  }

  objc_opt_class();
  if (!address)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  LibcoreIoIoBridge_bindWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_(*(&self->super.super.blockingLock_ + 7), [address getAddress], objc_msgSend(address, "getPort"));
  [(JavaNioSocketChannelImpl *)self onBindWithBoolean:1];
  objc_sync_exit(self);
  return self;
}

- (void)onBindWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  v5 = [LibcoreIoLibcore_os_ getsocknameWithJavaIoFileDescriptor:*(&self->super.super.blockingLock_ + 7)];
  atomic_store(1u, &self->status_ + 3);
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
  getPort = [v5 getPort];
  *(&self->localAddress_ + 7) = getPort;
  if (booleanCopy)
  {
    v7 = getPort;
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
  if (![(JavaNioChannelsSpiAbstractInterruptibleChannel *)self isOpen])
  {
    v6 = new_JavaNioChannelsClosedChannelException_init();
    objc_exception_throw(v6);
  }

  v3 = atomic_load(&self->status_ + 3);
  if (v3)
  {
    v4 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_(*(&self->connectAddress_ + 7), *(&self->localAddress_ + 7));
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(self);
  return v4;
}

- (id)getOptionWithJavaNetSocketOption:(id)option
{
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  v5 = JavaNetStandardSocketOptions_SOCKET_OPTIONS_;

  return JavaNioNioUtils_getSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_(self, v5, option);
}

- (id)setOptionWithJavaNetSocketOption:(id)option withId:(id)id
{
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  JavaNioNioUtils_setSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_withId_(self, JavaNetStandardSocketOptions_SOCKET_OPTIONS_, option, id);
  return self;
}

- (id)supportedOptions
{
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  return JavaNetStandardSocketOptions_SOCKET_OPTIONS_;
}

- (BOOL)isConnected
{
  objc_sync_enter(self);
  v3 = *(&self->localPort_ + 3) == 2;
  objc_sync_exit(self);
  return v3;
}

- (BOOL)isConnectionPending
{
  objc_sync_enter(self);
  v3 = *(&self->localPort_ + 3) == 1;
  objc_sync_exit(self);
  return v3;
}

- (BOOL)connectWithJavaNetSocketAddress:(id)address
{
  [JavaNioSocketChannelImpl checkUnconnected]_0(self);
  JavaNioSocketChannelImpl_validateAddressWithJavaNetSocketAddress_(address);
  if (!address || (LocalHost = [address getAddress], v6 = objc_msgSend(address, "getPort"), !LocalHost))
  {
    JreThrowNullPointerException();
  }

  v7 = v6;
  if ([LocalHost isAnyLocalAddress])
  {
    LocalHost = JavaNetInetAddress_getLocalHost();
  }

  isBlocking = [(JavaNioChannelsSpiAbstractSelectableChannel *)self isBlocking];
  if (isBlocking)
  {
    [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
  }

  LibcoreIoIoBridge_connectWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_(*(&self->super.super.blockingLock_ + 7), LocalHost, v7);
  if (isBlocking)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  if (isBlocking)
  {
    [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:?];
  }

  v10 = atomic_load(&self->status_ + 3);
  if ((v10 & 1) == 0)
  {
    [(JavaNioSocketChannelImpl *)self onBindWithBoolean:1];
  }

  [(JavaNioSocketChannelImpl *)self onConnectStatusChangedWithJavaNetInetSocketAddress:address withInt:v9 withBoolean:1];
  return *(&self->localPort_ + 3) == 2;
}

- (uint64_t)checkUnconnected
{
  objc_sync_enter(self);
  if (([self isOpen] & 1) == 0)
  {
    v4 = new_JavaNioChannelsClosedChannelException_init();
    goto LABEL_10;
  }

  v2 = *(self + 91);
  if (v2 == 1)
  {
    v4 = new_JavaNioChannelsConnectionPendingException_init();
    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v4 = new_JavaNioChannelsAlreadyConnectedException_init();
LABEL_10:
    objc_exception_throw(v4);
  }

  return objc_sync_exit(self);
}

- (void)onConnectStatusChangedWithJavaNetInetSocketAddress:(id)address withInt:(int)int withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  *(&self->localPort_ + 3) = int;
  JreStrongAssign((&self->socket_ + 7), address);
  if (int == 2 && booleanCopy)
  {
    v8 = *(&self->fd_ + 7);
    if (v8)
    {
      v9 = *(&self->socket_ + 7);
      if (!v9)
      {
        JreThrowNullPointerException();
      }

      getAddress = [v9 getAddress];
      getPort = [*(&self->socket_ + 7) getPort];

      [v8 onConnectWithJavaNetInetAddress:getAddress withInt:getPort];
    }
  }
}

- (BOOL)finishConnect
{
  objc_sync_enter(self);
  if (![(JavaNioChannelsSpiAbstractInterruptibleChannel *)self isOpen])
  {
    v9 = new_JavaNioChannelsClosedChannelException_init();
    goto LABEL_16;
  }

  v3 = *(&self->localPort_ + 3);
  if ((v3 - 1) >= 2)
  {
    v9 = new_JavaNioChannelsNoConnectionPendingException_init();
LABEL_16:
    objc_exception_throw(v9);
  }

  objc_sync_exit(self);
  if (v3 == 2)
  {
    LOBYTE(isConnectedWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_withInt) = 1;
  }

  else
  {
    [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
    v5 = *(&self->socket_ + 7);
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    isConnectedWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_withInt = LibcoreIoIoBridge_isConnectedWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_withInt_(*(&self->super.super.blockingLock_ + 7), [v5 getAddress], objc_msgSend(*(&self->socket_ + 7), "getPort"), 0, 0);
    [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:isConnectedWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_withInt];
    objc_sync_enter(self);
    if (isConnectedWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_withInt)
    {
      *(&self->localPort_ + 3) = 2;
      v6 = *(&self->fd_ + 7);
      if (v6)
      {
        v7 = *(&self->socket_ + 7);
        if (!v7)
        {
          JreThrowNullPointerException();
        }

        [v6 onConnectWithJavaNetInetAddress:objc_msgSend(v7 withInt:{"getAddress"), objc_msgSend(*(&self->socket_ + 7), "getPort")}];
      }
    }

    objc_sync_exit(self);
  }

  return isConnectedWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_withInt_withInt;
}

- (int)readWithJavaNioByteBuffer:(id)buffer
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  [buffer checkWritable];
  [JavaNioSocketChannelImpl checkOpenConnected]_0(self);
  result = [buffer hasRemaining];
  if (result)
  {

    return sub_1001E8FCC(self, buffer);
  }

  return result;
}

- (uint64_t)checkOpenConnected
{
  objc_sync_enter(self);
  if (([self isOpen] & 1) == 0)
  {
    v3 = new_JavaNioChannelsClosedChannelException_init();
    goto LABEL_8;
  }

  if (([self isConnected] & 1) == 0)
  {
    v3 = new_JavaNioChannelsNotYetConnectedException_init();
LABEL_8:
    objc_exception_throw(v3);
  }

  return objc_sync_exit(self);
}

- (int64_t)readWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    goto LABEL_18;
  }

  intCopy = int;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  [JavaNioSocketChannelImpl checkOpenConnected]_0(self);
  v9 = JavaNioFileChannelImpl_calculateTotalRemainingWithJavaNioByteBufferArray_withInt_withInt_withBoolean_(array, intCopy, withInt, 1);
  if (!v9)
  {
    return 0;
  }

  v10 = [IOSByteArray arrayWithLength:v9];
  v11 = JavaNioByteBuffer_wrapWithByteArray_(v10);
  v12 = sub_1001E8FCC(self, v11);
  if (!v11)
  {
    goto LABEL_18;
  }

  v13 = v12;
  [(JavaNioBuffer *)v11 flip];
  if (v13 >= 1)
  {
    v14 = v13;
    while (1)
    {
      v15 = *(array + 2);
      if (intCopy < 0 || intCopy >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, intCopy);
      }

      v16 = *(array + intCopy + 3);
      if (!v16)
      {
        break;
      }

      v17 = JavaLangMath_minWithInt_withInt_([v16 remaining], v14);
      v18 = *(array + 2);
      if (intCopy < 0 || intCopy >= v18)
      {
        IOSArray_throwOutOfBoundsWithMsg(v18, intCopy);
      }

      v19 = *(array + intCopy + 3);
      if (!v19)
      {
        break;
      }

      [v19 putWithByteArray:v10 withInt:(v13 - v14) withInt:v17];
      ++intCopy;
      v14 -= v17;
      if (v14 <= 0)
      {
        return v13;
      }
    }

LABEL_18:
    JreThrowNullPointerException();
  }

  return v13;
}

- (int)writeWithJavaNioByteBuffer:(id)buffer
{
  if (!buffer)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"src == null");
    objc_exception_throw(v6);
  }

  [JavaNioSocketChannelImpl checkOpenConnected]_0(self);
  result = [buffer hasRemaining];
  if (result)
  {

    return sub_1001E92FC(self, buffer);
  }

  return result;
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    goto LABEL_23;
  }

  intCopy = int;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  [JavaNioSocketChannelImpl checkOpenConnected]_0(self);
  v9 = JavaNioFileChannelImpl_calculateTotalRemainingWithJavaNioByteBufferArray_withInt_withInt_withBoolean_(array, intCopy, withInt, 0);
  if (!v9)
  {
    return 0;
  }

  v17 = JavaNioByteBuffer_allocateWithInt_(v9, v10, v11, v12, v13, v14, v15, v16);
  v18 = v17;
  v19 = withInt + intCopy;
  if (withInt + intCopy > intCopy)
  {
    v20 = intCopy;
    v21 = v19;
    v22 = array + 8 * intCopy;
    while (1)
    {
      v23 = *(array + 2);
      if (v20 < 0 || v20 >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, v20);
      }

      v24 = *(v22 + 3);
      if (!v24)
      {
        break;
      }

      position = [*(v22 + 3) position];
      if (!v18)
      {
        break;
      }

      v26 = position;
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
  v28 = sub_1001E92FC(self, v18);
  v29 = v28;
  if (v28 >= 1)
  {
    v30 = v28;
    while (1)
    {
      v31 = intCopy;
      v32 = *(array + 2);
      if (intCopy < 0 || intCopy >= v32)
      {
        IOSArray_throwOutOfBoundsWithMsg(v32, intCopy);
      }

      v33 = *(array + intCopy + 3);
      if (!v33)
      {
        break;
      }

      v34 = JavaLangMath_minWithInt_withInt_(v30, [*(array + v31 + 3) remaining]);
      [v33 positionWithInt:{objc_msgSend(v33, "position") + v34}];
      intCopy = v31 + 1;
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
  if (*(&self->localPort_ + 3) != 3)
  {
    *(&self->localPort_ + 3) = 3;
    LibcoreIoIoBridge_closeSocketWithJavaIoFileDescriptor_(*(&self->super.super.blockingLock_ + 7));
    v3 = *(&self->fd_ + 7);
    if (v3)
    {
      if (([v3 isClosed] & 1) == 0)
      {
        [*(&self->fd_ + 7) onClose];
      }
    }
  }

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNioSocketChannelImpl;
  [(JavaNioChannelsSpiAbstractSelectableChannel *)&v3 dealloc];
}

@end