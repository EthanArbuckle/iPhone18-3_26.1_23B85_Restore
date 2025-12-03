@interface JavaNetInet4Address
+ (void)initialize;
- (BOOL)isAnyLocalAddress;
- (BOOL)isLinkLocalAddress;
- (BOOL)isLoopbackAddress;
- (BOOL)isMCGlobal;
- (BOOL)isMCLinkLocal;
- (BOOL)isMCOrgLocal;
- (BOOL)isMCSiteLocal;
- (BOOL)isMulticastAddress;
- (BOOL)isSiteLocalAddress;
- (id)writeReplace;
@end

@implementation JavaNetInet4Address

- (BOOL)isAnyLocalAddress
{
  ipaddress = self->super.ipaddress_;
  if (!ipaddress)
  {
    JreThrowNullPointerException();
  }

  size = ipaddress->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  if (*(&ipaddress->super.size_ + 4))
  {
    return 0;
  }

  v5 = self->super.ipaddress_;
  v6 = v5->super.size_;
  if (v6 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 1);
  }

  if (*(&v5->super.size_ + 5))
  {
    return 0;
  }

  v7 = self->super.ipaddress_;
  v8 = v7->super.size_;
  if (v8 <= 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, 2);
  }

  if (*(&v7->super.size_ + 6))
  {
    return 0;
  }

  v10 = self->super.ipaddress_;
  v11 = v10->super.size_;
  if (v11 <= 3)
  {
    IOSArray_throwOutOfBoundsWithMsg(v11, 3);
  }

  return *(&v10->super.size_ + 7) == 0;
}

- (BOOL)isLinkLocalAddress
{
  ipaddress = self->super.ipaddress_;
  if (!ipaddress)
  {
    JreThrowNullPointerException();
  }

  size = ipaddress->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  if (*(&ipaddress->super.size_ + 4) != 169)
  {
    return 0;
  }

  v5 = self->super.ipaddress_;
  v6 = v5->super.size_;
  if (v6 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 1);
  }

  return *(&v5->super.size_ + 5) == 254;
}

- (BOOL)isLoopbackAddress
{
  ipaddress = self->super.ipaddress_;
  if (!ipaddress)
  {
    JreThrowNullPointerException();
  }

  size = ipaddress->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  return *(&ipaddress->super.size_ + 4) == 127;
}

- (BOOL)isMCGlobal
{
  isMulticastAddress = [(JavaNetInet4Address *)self isMulticastAddress];
  if (isMulticastAddress)
  {
    ipaddress = self->super.ipaddress_;
    if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10014A090();
    }

    LOBYTE(isMulticastAddress) = LibcoreIoMemory_peekIntWithByteArray_withInt_withJavaNioByteOrder_(ipaddress, 0, JavaNioByteOrder_BIG_ENDIAN__) + 536870656 < 0xEFFFF00;
  }

  return isMulticastAddress;
}

- (BOOL)isMCLinkLocal
{
  ipaddress = self->super.ipaddress_;
  if (!ipaddress)
  {
    JreThrowNullPointerException();
  }

  size = ipaddress->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  if (*(&ipaddress->super.size_ + 4) != 224)
  {
    return 0;
  }

  v5 = self->super.ipaddress_;
  v6 = v5->super.size_;
  if (v6 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 1);
  }

  if (*(&v5->super.size_ + 5))
  {
    return 0;
  }

  v8 = self->super.ipaddress_;
  v9 = v8->super.size_;
  if (v9 <= 2)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, 2);
  }

  return *(&v8->super.size_ + 6) == 0;
}

- (BOOL)isMCOrgLocal
{
  ipaddress = self->super.ipaddress_;
  if (!ipaddress)
  {
    JreThrowNullPointerException();
  }

  size = ipaddress->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  if (*(&ipaddress->super.size_ + 4) != 239)
  {
    return 0;
  }

  v5 = self->super.ipaddress_;
  v6 = v5->super.size_;
  if (v6 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 1);
  }

  return (*(&v5->super.size_ + 5) & 0xFC) == 192;
}

- (BOOL)isMCSiteLocal
{
  ipaddress = self->super.ipaddress_;
  if (!ipaddress)
  {
    JreThrowNullPointerException();
  }

  size = ipaddress->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  if (*(&ipaddress->super.size_ + 4) != 239)
  {
    return 0;
  }

  v5 = self->super.ipaddress_;
  v6 = v5->super.size_;
  if (v6 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 1);
  }

  return *(&v5->super.size_ + 5) == 255;
}

- (BOOL)isMulticastAddress
{
  ipaddress = self->super.ipaddress_;
  if (!ipaddress)
  {
    JreThrowNullPointerException();
  }

  size = ipaddress->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  return (*(&ipaddress->super.size_ + 1) & 0xF0) == 224;
}

- (BOOL)isSiteLocalAddress
{
  ipaddress = self->super.ipaddress_;
  if (!ipaddress)
  {
    JreThrowNullPointerException();
  }

  size = ipaddress->super.size_;
  if (size <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, 0);
  }

  if (*(&ipaddress->super.size_ + 4) == 10)
  {
    return 1;
  }

  v6 = self->super.ipaddress_;
  v7 = v6->super.size_;
  if (v7 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 0);
  }

  v8 = self->super.ipaddress_;
  if (*(&v6->super.size_ + 4) == 172)
  {
    v9 = v6->super.size_;
    if (v9 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 1);
    }

    if ((*(&v6->super.size_ + 5) & 0xF0) == 0x10)
    {
      return 1;
    }

    v8 = self->super.ipaddress_;
  }

  v10 = v8->super.size_;
  if (v10 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v10, 0);
  }

  if (*(&v8->super.size_ + 4) == 192)
  {
    v11 = self->super.ipaddress_;
    v12 = v11->super.size_;
    if (v12 <= 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, 1);
    }

    if (*(&v11->super.size_ + 5) == 168)
    {
      return 1;
    }
  }

  return 0;
}

- (id)writeReplace
{
  ipaddress = self->super.ipaddress_;
  hostName = self->super.hostName_;
  v4 = [JavaNetInet4Address alloc];
  JavaNetInetAddress_initWithInt_withByteArray_withNSString_(v4, 2, ipaddress, hostName);

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v10 = 0;
    v2 = [IOSByteArray arrayWithBytes:&v10 count:4];
    v3 = [JavaNetInet4Address alloc];
    JavaNetInetAddress_initWithInt_withByteArray_withNSString_(v3, 2, v2, 0);
    JreStrongAssignAndConsume(&JavaNetInet4Address_ANY_, v3);
    v9 = -1;
    v4 = [IOSByteArray arrayWithBytes:&v9 count:4];
    v5 = [JavaNetInet4Address alloc];
    JavaNetInetAddress_initWithInt_withByteArray_withNSString_(v5, 2, v4, 0);
    JreStrongAssignAndConsume(&JavaNetInet4Address_ALL_, v5);
    v8 = 16777343;
    v6 = [IOSByteArray arrayWithBytes:&v8 count:4];
    v7 = [JavaNetInet4Address alloc];
    JavaNetInetAddress_initWithInt_withByteArray_withNSString_(v7, 2, v6, @"localhost");
    JreStrongAssignAndConsume(&JavaNetInet4Address_LOOPBACK_, v7);
    atomic_store(1u, JavaNetInet4Address__initialized);
  }
}

@end