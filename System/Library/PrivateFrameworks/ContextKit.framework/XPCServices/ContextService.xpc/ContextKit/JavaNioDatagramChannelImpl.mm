@interface JavaNioDatagramChannelImpl
- (BOOL)isConnected;
- (JavaNioDatagramChannelImpl)init;
- (id)bindWithJavaNetSocketAddress:(id)address;
- (id)checkOpen;
- (id)checkOpenConnected;
- (id)connectWithJavaNetSocketAddress:(id)address;
- (id)disconnect;
- (id)getLocalAddress;
- (id)getOptionWithJavaNetSocketOption:(id)option;
- (id)receiveWithJavaNioByteBuffer:(id)buffer;
- (id)setOptionWithJavaNetSocketOption:(id)option withId:(id)id;
- (id)socket;
- (id)supportedOptions;
- (int)readWithJavaNioByteBuffer:(id)buffer;
- (int)sendWithJavaNioByteBuffer:(id)buffer withJavaNetSocketAddress:(id)address;
- (int)writeWithJavaNioByteBuffer:(id)buffer;
- (int64_t)readWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt;
- (int64_t)writeWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)implCloseSelectableChannel;
- (void)onBindWithBoolean:(BOOL)boolean;
- (void)onDisconnectWithBoolean:(BOOL)boolean;
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

- (id)bindWithJavaNetSocketAddress:(id)address
{
  objc_sync_enter(self);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (self->connected_)
  {
    v5 = new_JavaNioChannelsAlreadyBoundException_init();
LABEL_13:
    objc_exception_throw(v5);
  }

  if (address)
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

  LibcoreIoIoBridge_bindWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_(*(&self->isBound_ + 6), [address getAddress], objc_msgSend(address, "getPort"));
  [(JavaNioDatagramChannelImpl *)self onBindWithBoolean:1];
  objc_sync_exit(self);
  return self;
}

- (id)checkOpen
{
  result = [self isOpen];
  if ((result & 1) == 0)
  {
    v2 = new_JavaNioChannelsClosedChannelException_init();
    objc_exception_throw(v2);
  }

  return result;
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
  getPort = [v5 getPort];
  *(&self->socket_ + 7) = getPort;
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

- (id)getOptionWithJavaNetSocketOption:(id)option
{
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  v5 = JavaNetStandardSocketOptions_DATAGRAM_SOCKET_OPTIONS_;

  return JavaNioNioUtils_getSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_(self, v5, option);
}

- (id)setOptionWithJavaNetSocketOption:(id)option withId:(id)id
{
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if ((atomic_load_explicit(JavaNetStandardSocketOptions__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001661A8();
  }

  JavaNioNioUtils_setSocketOptionWithJavaNioFileDescriptorChannel_withJavaUtilSet_withJavaNetSocketOption_withId_(self, JavaNetStandardSocketOptions_DATAGRAM_SOCKET_OPTIONS_, option, id);
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

- (id)connectWithJavaNetSocketAddress:(id)address
{
  objc_sync_enter(self);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (HIBYTE(self->localAddress_) == 1)
  {
    v10 = new_JavaLangIllegalStateException_init();
    objc_exception_throw(v10);
  }

  v5 = JavaNioSocketChannelImpl_validateAddressWithJavaNetSocketAddress_(address);
  v6 = v5;
  if (!v5)
  {
    JreThrowNullPointerException();
  }

  getAddress = [v5 getAddress];
  getPort = [v6 getPort];
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
  LibcoreIoIoBridge_connectWithJavaIoFileDescriptor_withJavaNetInetAddress_withInt_(*(&self->isBound_ + 6), getAddress, getPort);
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:1];
  if (!self->connected_)
  {
    [(JavaNioDatagramChannelImpl *)self onBindWithBoolean:1];
  }

  [(JavaNioDatagramChannelImpl *)self onConnectWithJavaNetInetAddress:getAddress withInt:getPort withBoolean:1];
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

- (void)onDisconnectWithBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  HIBYTE(self->localAddress_) = 0;
  JreStrongAssign((&self->super.super.blockingLock_ + 7), 0);
  if (booleanCopy)
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

- (id)receiveWithJavaNioByteBuffer:(id)buffer
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  [buffer checkWritable];
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  if (!self->connected_)
  {
    return 0;
  }

  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self begin];
  v5 = *(&self->localPort_ + 7);
  objc_sync_enter(v5);
  isBlocking = [(JavaNioChannelsSpiAbstractSelectableChannel *)self isBlocking];
  if ([buffer isDirect])
  {
    v7 = sub_100172134(self, buffer, isBlocking);
  }

  else
  {
    v7 = sub_100171F68(self, buffer, isBlocking);
  }

  v8 = v7;
  objc_sync_exit(v5);
  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:v8 != 0];
  return v8;
}

- (int)sendWithJavaNioByteBuffer:(id)buffer withJavaNetSocketAddress:(id)address
{
  sub_100172474(buffer);
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  objc_opt_class();
  if (!address)
  {
    goto LABEL_15;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (![address getAddress])
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

  if (([v7 isEqual:address] & 1) == 0)
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
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  position = [buffer position];
  v17 = LibcoreIoIoBridge_sendtoWithJavaIoFileDescriptor_withJavaNioByteBuffer_withInt_withJavaNetInetAddress_withInt_(*(&self->isBound_ + 6), buffer, 0, [address getAddress], objc_msgSend(address, "getPort"));
  v18 = v17;
  if (v17 >= 1)
  {
    [buffer positionWithInt:v17 + position];
  }

  if (!self->connected_)
  {
    [(JavaNioDatagramChannelImpl *)self onBindWithBoolean:1];
  }

  [(JavaNioChannelsSpiAbstractInterruptibleChannel *)self endWithBoolean:v18 >= 0];
  objc_sync_exit(v15);
  return v18;
}

- (int)readWithJavaNioByteBuffer:(id)buffer
{
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  [buffer checkWritable];
  [JavaNioDatagramChannelImpl checkOpenConnected]_0(self);
  if ([buffer hasRemaining])
  {
    if (([buffer isDirect] & 1) != 0 || objc_msgSend(buffer, "hasArray"))
    {
      LODWORD(self) = sub_1001725CC(self, buffer);
      if (self >= 1)
      {
        [buffer positionWithInt:{objc_msgSend(buffer, "position") + self}];
      }
    }

    else
    {
      v6 = +[IOSByteArray arrayWithLength:](IOSByteArray, "arrayWithLength:", [buffer remaining]);
      v7 = JavaNioByteBuffer_wrapWithByteArray_(v6);
      self = sub_1001725CC(self, v7);
      if (self >= 1)
      {
        [buffer putWithByteArray:v6 withInt:0 withInt:self];
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
  [JavaNioDatagramChannelImpl checkOpen]_0(self);
  result = [self isConnected];
  if ((result & 1) == 0)
  {
    v3 = new_JavaNioChannelsNotYetConnectedException_init();
    objc_exception_throw(v3);
  }

  return result;
}

- (int64_t)readWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    goto LABEL_18;
  }

  intCopy = int;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  [JavaNioDatagramChannelImpl checkOpenConnected]_0(self);
  v9 = JavaNioFileChannelImpl_calculateTotalRemainingWithJavaNioByteBufferArray_withInt_withInt_withBoolean_(array, intCopy, withInt, 1);
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
  array = [(JavaNioByteBuffer *)v17 array];
  if (v19 >= 1)
  {
    v21 = array;
    v22 = v19;
    while (1)
    {
      v23 = *(array + 2);
      if (intCopy < 0 || intCopy >= v23)
      {
        IOSArray_throwOutOfBoundsWithMsg(v23, intCopy);
      }

      v24 = *(array + intCopy + 3);
      if (!v24)
      {
        break;
      }

      v25 = JavaLangMath_minWithInt_withInt_([v24 remaining], v22);
      v26 = *(array + 2);
      if (intCopy < 0 || intCopy >= v26)
      {
        IOSArray_throwOutOfBoundsWithMsg(v26, intCopy);
      }

      v27 = *(array + intCopy + 3);
      if (!v27)
      {
        break;
      }

      [v27 putWithByteArray:v21 withInt:(v19 - v22) withInt:v25];
      ++intCopy;
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

- (int)writeWithJavaNioByteBuffer:(id)buffer
{
  sub_100172474(buffer);
  [JavaNioDatagramChannelImpl checkOpenConnected]_0(self);
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  if (![buffer hasRemaining])
  {
    return 0;
  }

  v5 = sub_1001728BC(self, buffer);
  if (v5 >= 1)
  {
    [buffer positionWithInt:{objc_msgSend(buffer, "position") + v5}];
  }

  return v5;
}

- (int64_t)writeWithJavaNioByteBufferArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (!array)
  {
    goto LABEL_23;
  }

  intCopy = int;
  JavaUtilArrays_checkOffsetAndCountWithInt_withInt_withInt_(*(array + 2), int, withInt);
  [JavaNioDatagramChannelImpl checkOpenConnected]_0(self);
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
  v28 = sub_1001728BC(self, v18);
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