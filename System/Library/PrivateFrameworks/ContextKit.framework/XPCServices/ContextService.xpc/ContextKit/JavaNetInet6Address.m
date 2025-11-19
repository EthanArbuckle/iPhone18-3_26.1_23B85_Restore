@interface JavaNetInet6Address
+ (void)initialize;
- (BOOL)isAnyLocalAddress;
- (BOOL)isIPv4CompatibleAddress;
- (BOOL)isLinkLocalAddress;
- (BOOL)isLoopbackAddress;
- (BOOL)isMCGlobal;
- (BOOL)isMCLinkLocal;
- (BOOL)isMCNodeLocal;
- (BOOL)isMCOrgLocal;
- (BOOL)isMCSiteLocal;
- (BOOL)isMulticastAddress;
- (BOOL)isSiteLocalAddress;
- (JavaNetInet6Address)initWithByteArray:(id)a3 withNSString:(id)a4 withInt:(int)a5;
- (id)description;
- (id)getScopedInterface;
- (int)getScopeId;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaNetInet6Address

- (JavaNetInet6Address)initWithByteArray:(id)a3 withNSString:(id)a4 withInt:(int)a5
{
  JavaNetInetAddress_initWithInt_withByteArray_withNSString_(self, 30, a3, a4);
  *&self->scope_id_set_ = a5;
  *(&self->super.family_ + 4) = a5 != 0;
  return self;
}

- (BOOL)isAnyLocalAddress
{
  if (!JavaNetInet6Address_ANY_)
  {
    JreThrowNullPointerException();
  }

  ipaddress = self->super.ipaddress_;
  v4 = *(JavaNetInet6Address_ANY_ + 8);

  return JavaUtilArrays_equalsWithByteArray_withByteArray_(ipaddress, v4);
}

- (BOOL)isIPv4CompatibleAddress
{
  v3 = 0;
  v4 = 0;
  do
  {
    ipaddress = self->super.ipaddress_;
    if (!ipaddress)
    {
      JreThrowNullPointerException();
    }

    size = ipaddress->super.size_;
    if (v3 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v3);
    }

    if (*(&ipaddress->super.size_ + v3 + 4))
    {
      break;
    }

    v4 = v3++ > 0xA;
  }

  while (v3 != 12);
  return v4;
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

  if (*(&ipaddress->super.size_ + 4) != 254)
  {
    return 0;
  }

  v5 = self->super.ipaddress_;
  v6 = v5->super.size_;
  if (v6 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 1);
  }

  return (*(&v5->super.size_ + 5) & 0xC0) == 128;
}

- (BOOL)isLoopbackAddress
{
  if (!JavaNetInet6Address_LOOPBACK_)
  {
    JreThrowNullPointerException();
  }

  ipaddress = self->super.ipaddress_;
  v4 = *(JavaNetInet6Address_LOOPBACK_ + 8);

  return JavaUtilArrays_equalsWithByteArray_withByteArray_(ipaddress, v4);
}

- (BOOL)isMCGlobal
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

  if (*(&ipaddress->super.size_ + 4) != 255)
  {
    return 0;
  }

  v6 = self->super.ipaddress_;
  v7 = v6->super.size_;
  if (v7 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 1);
  }

  return (*(&v6->super.size_ + 5) & 0xF) == 14;
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

  if (*(&ipaddress->super.size_ + 4) != 255)
  {
    return 0;
  }

  v6 = self->super.ipaddress_;
  v7 = v6->super.size_;
  if (v7 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 1);
  }

  return (*(&v6->super.size_ + 5) & 0xF) == 2;
}

- (BOOL)isMCNodeLocal
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

  if (*(&ipaddress->super.size_ + 4) != 255)
  {
    return 0;
  }

  v6 = self->super.ipaddress_;
  v7 = v6->super.size_;
  if (v7 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 1);
  }

  return (*(&v6->super.size_ + 5) & 0xF) == 1;
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

  if (*(&ipaddress->super.size_ + 4) != 255)
  {
    return 0;
  }

  v6 = self->super.ipaddress_;
  v7 = v6->super.size_;
  if (v7 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 1);
  }

  return (*(&v6->super.size_ + 5) & 0xF) == 8;
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

  if (*(&ipaddress->super.size_ + 4) != 255)
  {
    return 0;
  }

  v6 = self->super.ipaddress_;
  v7 = v6->super.size_;
  if (v7 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, 1);
  }

  return (*(&v6->super.size_ + 5) & 0xF) == 5;
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

  return *(&ipaddress->super.size_ + 4) == 255;
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

  if (*(&ipaddress->super.size_ + 4) != 254)
  {
    return 0;
  }

  v5 = self->super.ipaddress_;
  v6 = v5->super.size_;
  if (v6 <= 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(v6, 1);
  }

  return *(&v5->super.size_ + 5) > 0xBFu;
}

- (int)getScopeId
{
  if (*(&self->super.family_ + 4) == 1)
  {
    return *&self->scope_id_set_;
  }

  else
  {
    return 0;
  }
}

- (id)getScopedInterface
{
  if (LOBYTE(self->scope_id_) != 1)
  {
    return 0;
  }

  result = *(&self->scope_ifname_set_ + 4);
  if (result)
  {
    return JavaNetNetworkInterface_getByNameWithNSString_(result);
  }

  return result;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3)
  {
    goto LABEL_10;
  }

  v5 = [a3 putFields];
  v6 = v5;
  ipaddress = self->super.ipaddress_;
  if (!ipaddress)
  {
    if (v5)
    {
      ipaddress = 0;
      goto LABEL_7;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_7:
  [v5 putWithNSString:@"ipaddress" withId:ipaddress];
  [v6 putWithNSString:@"scope_id" withInt:*&self->scope_id_set_];
  [v6 putWithNSString:@"scope_id_set" withBoolean:*(&self->super.family_ + 4)];
  [v6 putWithNSString:@"scope_ifname_set" withBoolean:LOBYTE(self->scope_id_)];
  [v6 putWithNSString:@"ifname" withId:*(&self->scope_ifname_set_ + 4)];

  [a3 writeFields];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3 || (v4 = [a3 readFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 getWithNSString:@"ipaddress" withId:0];
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0 || (JreStrongAssign(&self->super.ipaddress_, v6), *&self->scope_id_set_ = [v5 getWithNSString:@"scope_id" withInt:0], *(&self->super.family_ + 4) = objc_msgSend(v5, "getWithNSString:withBoolean:", @"scope_id_set", 0), v7 = objc_msgSend(v5, "getWithNSString:withId:", @"ifname", 0), objc_opt_class(), v7) && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign((&self->scope_ifname_set_ + 4), v7);
  LOBYTE(self->scope_id_) = [v5 getWithNSString:@"scope_ifname_set" withBoolean:0];
}

- (id)description
{
  if (*(&self->scope_ifname_set_ + 4))
  {
    v24.receiver = self;
    v24.super_class = JavaNetInet6Address;
    v3 = [(JavaNetInetAddress *)&v24 description];
    v20 = *(&self->scope_ifname_set_ + 4);
    return JreStrcat("$C$", v4, v5, v6, v7, v8, v9, v10, v3);
  }

  else if (*&self->scope_id_set_)
  {
    v23.receiver = self;
    v23.super_class = JavaNetInet6Address;
    v12 = [(JavaNetInetAddress *)&v23 description];
    v21 = *&self->scope_id_set_;
    return JreStrcat("$CI", v13, v14, v15, v16, v17, v18, v19, v12);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = JavaNetInet6Address;
    return [(JavaNetInetAddress *)&v22 description];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetInet6Address;
  [(JavaNetInetAddress *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v12[0] = 0;
    v12[1] = 0;
    v2 = [IOSByteArray arrayWithBytes:v12 count:16];
    v3 = [JavaNetInet6Address alloc];
    JavaNetInetAddress_initWithInt_withByteArray_withNSString_(v3, 30, v2, 0);
    *&v3->scope_id_set_ = 0;
    *(&v3->super.family_ + 4) = 0;
    JreStrongAssignAndConsume(&JavaNetInet6Address_ANY_, v3);
    memset(v11, 0, 15);
    v11[15] = 1;
    v4 = [IOSByteArray arrayWithBytes:v11 count:16];
    v5 = [JavaNetInet6Address alloc];
    JavaNetInetAddress_initWithInt_withByteArray_withNSString_(v5, 30, v4, @"localhost");
    *&v5->scope_id_set_ = 0;
    *(&v5->super.family_ + 4) = 0;
    JreStrongAssignAndConsume(&JavaNetInet6Address_LOOPBACK_, v5);
    v6 = IOSClass_arrayType(+[IOSClass byteClass], 1u);
    v7 = [IOSClass intClass:new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"ipaddress"];
    v10[1] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"scope_id", v7);
    v10[2] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"scope_id_set", +[IOSClass BOOLeanClass]);
    v10[3] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"scope_ifname_set", +[IOSClass BOOLeanClass]);
    v8 = NSString_class_();
    v10[4] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"ifname", v8);
    v9 = [IOSObjectArray newArrayWithObjects:v10 count:5 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&qword_100554F10, v9);
    atomic_store(1u, JavaNetInet6Address__initialized);
  }
}

@end