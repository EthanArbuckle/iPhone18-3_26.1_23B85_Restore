@interface JavaNetInterfaceAddress
- (BOOL)isEqual:(id)a3;
- (JavaNetInterfaceAddress)initWithJavaNetInet4Address:(id)a3 withJavaNetInet4Address:(id)a4 withJavaNetInet4Address:(id)a5;
- (JavaNetInterfaceAddress)initWithJavaNetInet6Address:(id)a3 withShort:(signed __int16)a4;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaNetInterfaceAddress

- (JavaNetInterfaceAddress)initWithJavaNetInet4Address:(id)a3 withJavaNetInet4Address:(id)a4 withJavaNetInet4Address:(id)a5
{
  JreStrongAssign(&self->address_, a3);
  JreStrongAssign(&self->broadcastAddress_, a4);
  self->prefixLength_ = sub_10024FDB8(a5);
  return self;
}

- (JavaNetInterfaceAddress)initWithJavaNetInet6Address:(id)a3 withShort:(signed __int16)a4
{
  JreStrongAssign(&self->address_, a3);
  JreStrongAssign(&self->broadcastAddress_, 0);
  self->prefixLength_ = a4;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
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

  address = self->address_;
  v6 = *(a3 + 1);
  if (!address)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_15:
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = [(JavaNetInetAddress *)address isEqual:v6];
  if (!v7)
  {
    return v7;
  }

LABEL_10:
  if (*(a3 + 12) != self->prefixLength_)
  {
    goto LABEL_15;
  }

  broadcastAddress = self->broadcastAddress_;
  v9 = *(a3 + 2);
  if (broadcastAddress)
  {

    LOBYTE(v7) = [(JavaNetInetAddress *)broadcastAddress isEqual:v9];
  }

  else
  {
    LOBYTE(v7) = v9 == 0;
  }

  return v7;
}

- (unint64_t)hash
{
  address = self->address_;
  if (address)
  {
    v4 = [(JavaNetInetAddress *)address];
  }

  else
  {
    LODWORD(v4) = 0;
  }

  broadcastAddress = self->broadcastAddress_;
  if (broadcastAddress)
  {
    LODWORD(broadcastAddress) = [(JavaNetInetAddress *)broadcastAddress hash];
  }

  return broadcastAddress + v4 + self->prefixLength_;
}

- (id)description
{
  broadcastAddress = self->broadcastAddress_;
  prefixLength = self->prefixLength_;
  return JreStrcat("@CS$@C", a2, v2, v3, v4, v5, v6, v7, self->address_);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetInterfaceAddress;
  [(JavaNetInterfaceAddress *)&v3 dealloc];
}

@end