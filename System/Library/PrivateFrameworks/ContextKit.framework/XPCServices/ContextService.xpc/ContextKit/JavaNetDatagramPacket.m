@interface JavaNetDatagramPacket
- (id)getAddress;
- (id)getData;
- (id)getSocketAddress;
- (int)getLength;
- (int)getOffset;
- (int)getPort;
- (void)dealloc;
- (void)setAddressWithJavaNetInetAddress:(id)a3;
- (void)setDataWithByteArray:(id)a3;
- (void)setDataWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
- (void)setLengthWithInt:(int)a3;
- (void)setPortWithInt:(int)a3;
- (void)setSocketAddressWithJavaNetSocketAddress:(id)a3;
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

- (void)setAddressWithJavaNetInetAddress:(id)a3
{
  objc_sync_enter(self);
  JreStrongAssign(&self->address_, a3);

  objc_sync_exit(self);
}

- (void)setDataWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  objc_sync_enter(self);
  if ((a5 | a4) < 0)
  {
    goto LABEL_11;
  }

  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v9 = *(a3 + 2);
  v10 = __OFSUB__(v9, a4);
  v11 = v9 - a4;
  if (v11 < 0 != v10 || v11 < a5)
  {
LABEL_11:
    v13 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v13);
  }

  JreStrongAssign(&self->data_, a3);
  self->offset_ = a4;
  self->length_ = a5;
  self->userSuppliedLength_ = a5;

  objc_sync_exit(self);
}

- (void)setDataWithByteArray:(id)a3
{
  objc_sync_enter(self);
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = *(a3 + 2);
  self->length_ = v5;
  self->userSuppliedLength_ = v5;
  JreStrongAssign(&self->data_, a3);
  self->offset_ = 0;

  objc_sync_exit(self);
}

- (void)setLengthWithInt:(int)a3
{
  objc_sync_enter(self);
  data = self->data_;
  if (a3 < 0)
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

  if (self->offset_ + a3 > data->super.size_)
  {
    goto LABEL_8;
  }

  self->length_ = a3;
  self->userSuppliedLength_ = a3;

  objc_sync_exit(self);
}

- (void)setPortWithInt:(int)a3
{
  objc_sync_enter(self);
  if (a3 >= 0x10000)
  {
    v12 = JreStrcat("$I", v5, v6, v7, v8, v9, v10, v11, @"Port out of range: ");
    v13 = new_JavaLangIllegalArgumentException_initWithNSString_(v12);
    objc_exception_throw(v13);
  }

  self->port_ = a3;

  objc_sync_exit(self);
}

- (id)getSocketAddress
{
  objc_sync_enter(self);
  v3 = new_JavaNetInetSocketAddress_initWithJavaNetInetAddress_withInt_([(JavaNetDatagramPacket *)self getAddress], [(JavaNetDatagramPacket *)self getPort]);
  objc_sync_exit(self);
  return v3;
}

- (void)setSocketAddressWithJavaNetSocketAddress:(id)a3
{
  objc_sync_enter(self);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a3)
    {
      [a3 getClass];
    }

    v21 = JreStrcat("$@", v5, v6, v7, v8, v9, v10, v11, @"Socket address not an InetSocketAddress: ");
    v22 = new_JavaLangIllegalArgumentException_initWithNSString_(v21);
    objc_exception_throw(v22);
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

  if ([a3 isUnresolved])
  {
    v19 = JreStrcat("$@", v12, v13, v14, v15, v16, v17, v18, @"Socket address unresolved: ");
    v20 = new_JavaLangIllegalArgumentException_initWithNSString_(v19);
    objc_exception_throw(v20);
  }

  self->port_ = [a3 getPort];
  JreStrongAssign(&self->address_, [a3 getAddress]);

  objc_sync_exit(self);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetDatagramPacket;
  [(JavaNetDatagramPacket *)&v3 dealloc];
}

@end