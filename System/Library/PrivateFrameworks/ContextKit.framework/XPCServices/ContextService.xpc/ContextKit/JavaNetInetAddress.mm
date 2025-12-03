@interface JavaNetInetAddress
+ (IOSObjectArray)loopbackAddresses;
+ (id)bytesToInetAddressesWithByteArray2:(id)array2 withNSString:(id)string;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReachableWithJavaNetNetworkInterface:(id)interface withInt:(int)int withInt:(int)withInt;
- (JavaNetInetAddress)initWithInt:(int)int withByteArray:(id)array withNSString:(id)string;
- (NSString)description;
- (id)getAddress;
- (id)getCanonicalHostName;
- (id)getHostAddress;
- (id)getHostName;
- (id)readResolve;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaNetInetAddress

- (JavaNetInetAddress)initWithInt:(int)int withByteArray:(id)array withNSString:(id)string
{
  self->family_ = int;
  JreStrongAssign(&self->ipaddress_, array);
  JreStrongAssign(&self->hostName_, string);
  return self;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  ipaddress = self->ipaddress_;
  objc_opt_class();
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v6 = *(equal + 1);

  return JavaUtilArrays_equalsWithByteArray_withByteArray_(ipaddress, v6);
}

- (id)getAddress
{
  ipaddress = self->ipaddress_;
  if (!ipaddress)
  {
    JreThrowNullPointerException();
  }

  return [(IOSArray *)ipaddress clone];
}

+ (id)bytesToInetAddressesWithByteArray2:(id)array2 withNSString:(id)string
{
  if (atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire))
  {
    if (array2)
    {
      goto LABEL_3;
    }

LABEL_8:
    JreThrowNullPointerException();
  }

  sub_1001CC9CC();
  if (!array2)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = [IOSObjectArray arrayWithLength:*(array2 + 2) type:JavaNetInetAddress_class_()];
  if (*(array2 + 2) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = sub_1001CAD4C(*(array2 + v7 + 3), string);
      IOSObjectArray_Set(v6, v7++, v8);
    }

    while (v7 < *(array2 + 2));
  }

  return v6;
}

- (id)getHostAddress
{
  if ((atomic_load_explicit(LibcoreIoLibcore__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100184238();
  }

  v3 = LibcoreIoLibcore_os_;
  if (!LibcoreIoLibcore_os_)
  {
    JreThrowNullPointerException();
  }

  return [v3 getnameinfoWithJavaNetInetAddress:self withInt:2];
}

- (id)getHostName
{
  p_hostName = &self->hostName_;
  if (!self->hostName_)
  {
    v3 = sub_1001CB184(self);
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    JreStrongAssign(p_hostName, v3[2]);
  }

  return *p_hostName;
}

- (id)getCanonicalHostName
{
  v2 = sub_1001CB184(self);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  return *(v2 + 2);
}

- (NSString)description
{
  if (self->hostName_)
  {
    hostName = self->hostName_;
  }

  else
  {
    hostName = &stru_100484358;
  }

  [(JavaNetInetAddress *)self getHostAddress];
  return JreStrcat("$C$", v3, v4, v5, v6, v7, v8, v9, hostName);
}

- (BOOL)isReachableWithJavaNetNetworkInterface:(id)interface withInt:(int)int withInt:(int)withInt
{
  if ((withInt | int) < 0)
  {
    v17 = new_JavaLangIllegalArgumentException_initWithNSString_(@"ttl < 0 || timeout < 0");
    objc_exception_throw(v17);
  }

  if (interface)
  {
    v7 = JavaUtilCollections_listWithJavaUtilEnumeration_([interface getInetAddresses]);
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    v8 = v7;
    if ([(JavaUtilArrayList *)v7 isEmpty])
    {
      return 0;
    }

    else
    {
      v10 = new_JavaUtilConcurrentCountDownLatch_initWithInt_([(JavaUtilArrayList *)v8 size]);
      v11 = new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(0);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      obj = v8;
      v12 = [(JavaUtilArrayList *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            v16 = [JavaNetInetAddress__1 alloc];
            sub_1001CC790(v16, self, self, v15, withInt, v11, v10);
            [(JavaLangThread *)v16 start];
          }

          v12 = [(JavaUtilArrayList *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      [(JavaUtilConcurrentCountDownLatch *)v10 await];
      return [(JavaUtilConcurrentAtomicAtomicBoolean *)v11 get];
    }
  }

  else
  {

    return sub_1001CBA70(self, 0, withInt);
  }
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  if (!stream)
  {
    goto LABEL_12;
  }

  putFields = [stream putFields];
  v6 = putFields;
  ipaddress = self->ipaddress_;
  if (!ipaddress)
  {
    if (putFields)
    {
      v8 = 0;
      goto LABEL_9;
    }

LABEL_12:
    JreThrowNullPointerException();
  }

  if (!putFields)
  {
    goto LABEL_12;
  }

  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  v8 = LibcoreIoMemory_peekIntWithByteArray_withInt_withJavaNioByteOrder_(ipaddress, 0, JavaNioByteOrder_BIG_ENDIAN__);
LABEL_9:
  [v6 putWithNSString:@"address" withInt:v8];
  [v6 putWithNSString:@"family" withInt:self->family_];
  [v6 putWithNSString:@"hostName" withId:self->hostName_];

  [stream writeFields];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream || (v4 = [stream readFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 getWithNSString:@"address" withInt:0];
  JreStrongAssignAndConsume(&self->ipaddress_, [IOSByteArray newArrayWithLength:4]);
  ipaddress = self->ipaddress_;
  if ((atomic_load_explicit(JavaNioByteOrder__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10014A090();
  }

  LibcoreIoMemory_pokeIntWithByteArray_withInt_withInt_withJavaNioByteOrder_(ipaddress, 0, v6, JavaNioByteOrder_BIG_ENDIAN__);
  v8 = [v5 getWithNSString:@"hostName" withId:0];
  objc_opt_class();
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(&self->hostName_, v8);
  self->family_ = [v5 getWithNSString:@"family" withInt:2];
}

- (id)readResolve
{
  v2 = new_JavaNetInet4Address_initWithByteArray_withNSString_(self->ipaddress_, self->hostName_);

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetInetAddress;
  [(JavaNetInetAddress *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = new_JavaNetAddressCache_init();
    JreStrongAssignAndConsume(&qword_100554DE0, v2);
    v3 = new_JavaNetInetAddress_initWithInt_withByteArray_withNSString_(0, 0, 0);
    JreStrongAssignAndConsume(&JavaNetInetAddress_UNSPECIFIED_, v3);
    v4 = +[IOSClass intClass](IOSClass, "intClass", new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"address", +[IOSClass intClass]));
    v7[1] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"family", v4);
    v5 = NSString_class_();
    v7[2] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"hostName", v5);
    v6 = [IOSObjectArray newArrayWithObjects:v7 count:3 type:JavaIoObjectStreamField_class_()];
    JreStrongAssignAndConsume(&qword_100554DE8, v6);
    atomic_store(1u, JavaNetInetAddress__initialized);
  }
}

+ (IOSObjectArray)loopbackAddresses
{
  if ((atomic_load_explicit(JavaNetInetAddress__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9CC();
  }

  if ((atomic_load_explicit(JavaNetInet6Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001CC9D8();
  }

  v1[0] = JavaNetInet6Address_LOOPBACK_;
  if ((atomic_load_explicit(JavaNetInet4Address__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1001520E0();
  }

  v1[1] = JavaNetInet4Address_LOOPBACK_;
  return [IOSObjectArray arrayWithObjects:v1 count:2 type:JavaNetInetAddress_class_()];
}

@end