@interface JavaNetDatagramPacket
- (id)getAddress;
- (id)getData;
- (id)getSocketAddress;
- (int)getLength;
- (int)getOffset;
- (int)getPort;
- (void)dealloc;
- (void)setAddressWithJavaNetInetAddress:(id)address;
- (void)setDataWithByteArray:(id)array;
- (void)setDataWithByteArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)setLengthWithInt:(int)int;
- (void)setPortWithInt:(int)int;
- (void)setSocketAddressWithJavaNetSocketAddress:(id)address;
@end

@implementation JavaNetDatagramPacket

- (id)getAddress
{
  objc_sync_enter(self);
  address = self->address_;
  objc_sync_exit(self);
  return address;
}

- (id)getData
{
  objc_sync_enter(self);
  data = self->data_;
  objc_sync_exit(self);
  return data;
}

- (int)getLength
{
  objc_sync_enter(self);
  length = self->length_;
  objc_sync_exit(self);
  return length;
}

- (int)getOffset
{
  objc_sync_enter(self);
  offset = self->offset_;
  objc_sync_exit(self);
  return offset;
}

- (int)getPort
{
  objc_sync_enter(self);
  port = self->port_;
  objc_sync_exit(self);
  return port;
}

- (void)setAddressWithJavaNetInetAddress:(id)address
{
  objc_sync_enter(self);
  JreStrongAssign(&self->address_, address);

  objc_sync_exit(self);
}

- (void)setDataWithByteArray:(id)array withInt:(int)int withInt:(int)withInt
{
  objc_sync_enter(self);
  if ((withInt | int) < 0)
  {
    goto LABEL_11;
  }

  if (!array)
  {
    JreThrowNullPointerException();
  }

  v9 = *(array + 2);
  v10 = __OFSUB__(v9, int);
  v11 = v9 - int;
  if (v11 < 0 != v10 || v11 < withInt)
  {
LABEL_11:
    v13 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v13);
  }

  JreStrongAssign(&self->data_, array);
  self->offset_ = int;
  self->length_ = withInt;
  self->userSuppliedLength_ = withInt;

  objc_sync_exit(self);
}

- (void)setDataWithByteArray:(id)array
{
  objc_sync_enter(self);
  if (!array)
  {
    JreThrowNullPointerException();
  }

  v5 = *(array + 2);
  self->length_ = v5;
  self->userSuppliedLength_ = v5;
  JreStrongAssign(&self->data_, array);
  self->offset_ = 0;

  objc_sync_exit(self);
}

- (void)setLengthWithInt:(int)int
{
  objc_sync_enter(self);
  data = self->data_;
  if (int < 0)
  {
    if (data)
    {
LABEL_8:
      size = data->super.size_;
      offset = self->offset_;
      v13 = JreStrcat("$I$I$I", v5, v6, v7, v8, v9, v10, v11, @"length=");
      v14 = new_JavaLangIndexOutOfBoundsException_initWithNSString_(v13);
      objc_exception_throw(v14);
    }

LABEL_9:
    JreThrowNullPointerException();
  }

  if (!data)
  {
    goto LABEL_9;
  }

  if (self->offset_ + int > data->super.size_)
  {
    goto LABEL_8;
  }

  self->length_ = int;
  self->userSuppliedLength_ = int;

  objc_sync_exit(self);
}

- (void)setPortWithInt:(int)int
{
  objc_sync_enter(self);
  if (int >= 0x10000)
  {
    v12 = JreStrcat("$I", v5, v6, v7, v8, v9, v10, v11, @"Port out of range: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  self->port_ = int;

  objc_sync_exit(self);
}

- (id)getSocketAddress
{
  objc_sync_enter(self);
  v3 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_([(JavaNetDatagramPacket *)self getAddress], [(JavaNetDatagramPacket *)self getPort]);
  objc_sync_exit(self);
  return v3;
}

- (void)setSocketAddressWithJavaNetSocketAddress:(id)address
{
  objc_sync_enter(self);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (address)
    {
      [address getClass];
    }

    v21 = JreStrcat("$@", v5, v6, v7, v8, v9, v10, v11, @"Socket address not an InetSocketAddress: ");
    v22 = new_JavaLangIllegalArgumentException_initWithNSString_(v21);
    objc_exception_throw(v22);
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

  if ([address isUnresolved])
  {
    v19 = JreStrcat("$@", v12, v13, v14, v15, v16, v17, v18, @"Socket address unresolved: ");
    v20 = new_JavaLangIllegalArgumentException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  self->port_ = [address getPort];
  JreStrongAssign(&self->address_, [address getAddress]);

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetDatagramPacket;
  [(JavaNetDatagramPacket *)&v3 dealloc];
}

@end