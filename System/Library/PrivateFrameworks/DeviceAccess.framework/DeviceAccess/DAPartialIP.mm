@interface DAPartialIP
- (BOOL)isEqual:(id)equal;
- (DAPartialIP)initWithAddress:(id)address mask:(id)mask;
- (DAPartialIP)initWithCoder:(id)coder;
- (DAPartialIP)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAPartialIP

- (void)encodeWithXPCObject:(id)object
{
  xdict = object;
  address = self->_address;
  if (address)
  {
    v5 = address;
    bytes = [(NSData *)v5 bytes];
    if (bytes)
    {
      v7 = bytes;
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
    bytes2 = [(NSData *)v12 bytes];
    if (bytes2)
    {
      v14 = bytes2;
    }

    else
    {
      v14 = "";
    }

    v15 = [(NSData *)v12 length];

    xpc_dictionary_set_data(v11, "ipMa", v14, v15);
  }
}

- (void)encodeWithCoder:(id)coder
{
  address = self->_address;
  coderCopy = coder;
  [coderCopy encodeObject:address forKey:@"address"];
  [coderCopy encodeObject:self->_mask forKey:@"mask"];
}

- (DAPartialIP)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = DAPartialIP;
  v5 = [(DAPartialIP *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"address"];
    v7 = [coderCopy decodeObjectForKey:@"mask"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = equalCopy;
  address = self->_address;
  address = [(DAPartialIP *)v5 address];
  if (![(NSData *)address isEqualToData:address])
  {

    goto LABEL_7;
  }

  mask = self->_mask;
  mask = [(DAPartialIP *)v5 mask];
  LOBYTE(mask) = [(NSData *)mask isEqualToData:mask];

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

- (DAPartialIP)initWithAddress:(id)address mask:(id)mask
{
  addressCopy = address;
  maskCopy = mask;
  v8 = maskCopy;
  selfCopy = 0;
  if (addressCopy && maskCopy)
  {
    v15.receiver = self;
    v15.super_class = DAPartialIP;
    self = [(DAPartialIP *)&v15 init];
    if (self && [addressCopy length] <= 0x10 && objc_msgSend(v8, "length") <= 0x10)
    {
      v10 = [addressCopy copy];
      address = self->_address;
      self->_address = v10;

      v12 = [v8 copy];
      mask = self->_mask;
      self->_mask = v12;

      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (DAPartialIP)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = DAPartialIP;
  v7 = [(DAPartialIP *)&v17 init];
  if (!v7)
  {
    if (error)
    {
      v10 = objc_opt_class();
      DAErrorF(350001, "%@ super init failed", v11, v12, v13, v14, v15, v16, v10);
      *error = v8 = 0;
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