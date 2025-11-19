@interface DAPartialIP
- (BOOL)isEqual:(id)a3;
- (DAPartialIP)initWithAddress:(id)a3 mask:(id)a4;
- (DAPartialIP)initWithCoder:(id)a3;
- (DAPartialIP)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation DAPartialIP

- (void)encodeWithXPCObject:(id)a3
{
  xdict = a3;
  address = self->_address;
  if (address)
  {
    v5 = address;
    v6 = [(NSData *)v5 bytes];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = "";
    }

    v8 = [(NSData *)v5 length];

    xpc_dictionary_set_data(xdict, "ipAd", v7, v8);
  }

  mask = self->_mask;
  if (mask)
  {
    v10 = mask;
    v11 = xdict;
    v12 = mask;
    v13 = [(NSData *)v12 bytes];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = "";
    }

    v15 = [(NSData *)v12 length];

    xpc_dictionary_set_data(v11, "ipMa", v14, v15);
  }
}

- (void)encodeWithCoder:(id)a3
{
  address = self->_address;
  v5 = a3;
  [v5 encodeObject:address forKey:@"address"];
  [v5 encodeObject:self->_mask forKey:@"mask"];
}

- (DAPartialIP)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DAPartialIP;
  v5 = [(DAPartialIP *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"address"];
    v7 = [v4 decodeObjectForKey:@"mask"];
    v8 = v7;
    if (!v6 || !v7)
    {

      v12 = 0;
      goto LABEL_6;
    }

    address = v5->_address;
    v5->_address = v6;
    v10 = v6;

    mask = v5->_mask;
    v5->_mask = v8;
  }

  v12 = v5;
LABEL_6:

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = v4;
  address = self->_address;
  v7 = [(DAPartialIP *)v5 address];
  if (![(NSData *)address isEqualToData:v7])
  {

    goto LABEL_7;
  }

  mask = self->_mask;
  v9 = [(DAPartialIP *)v5 mask];
  LOBYTE(mask) = [(NSData *)mask isEqualToData:v9];

  if ((mask & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

LABEL_5:
  v10 = 1;
LABEL_8:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSData *)self->_address description];
  v5 = [(NSData *)self->_mask description];
  v6 = [v3 stringWithFormat:@"addr: %@, mask: %@", v4, v5];

  return v6;
}

- (DAPartialIP)initWithAddress:(id)a3 mask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v15.receiver = self;
    v15.super_class = DAPartialIP;
    self = [(DAPartialIP *)&v15 init];
    if (self && [v6 length] <= 0x10 && objc_msgSend(v8, "length") <= 0x10)
    {
      v10 = [v6 copy];
      address = self->_address;
      self->_address = v10;

      v12 = [v8 copy];
      mask = self->_mask;
      self->_mask = v12;

      self = self;
      v9 = self;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (DAPartialIP)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = DAPartialIP;
  v7 = [(DAPartialIP *)&v17 init];
  if (!v7)
  {
    if (a4)
    {
      v10 = objc_opt_class();
      DAErrorF(350001, "%@ super init failed", v11, v12, v13, v14, v15, v16, v10);
      *a4 = v8 = 0;
      goto LABEL_5;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_5;
  }

  if (!CUXPCDecodeNSData() || !CUXPCDecodeNSData())
  {
    goto LABEL_8;
  }

  v8 = v7;
LABEL_5:

  return v8;
}

@end