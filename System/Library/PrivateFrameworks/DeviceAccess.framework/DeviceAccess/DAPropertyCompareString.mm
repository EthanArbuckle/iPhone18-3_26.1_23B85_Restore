@interface DAPropertyCompareString
- (BOOL)isEqual:(id)equal;
- (DAPropertyCompareString)initWithCoder:(id)coder;
- (DAPropertyCompareString)initWithString:(id)string compareOptions:(unint64_t)options;
- (DAPropertyCompareString)initWithXPCObject:(id)object error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAPropertyCompareString

- (DAPropertyCompareString)initWithString:(id)string compareOptions:(unint64_t)options
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = DAPropertyCompareString;
  v8 = [(DAPropertyCompareString *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_string, string);
    v9->_compareOptions = options;
    v10 = v9;
  }

  return v9;
}

- (DAPropertyCompareString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DAPropertyCompareString *)self init];
  if (v5)
  {
    v6 = coderCopy;
    if ([v6 containsValueForKey:@"pCso"])
    {
      v5->_compareOptions = [v6 decodeIntegerForKey:@"pCso"];
    }

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v5;
  }

  else
  {
    [DADeviceAccessoryServiceInfo initWithCoder:coderCopy];
  }

  return v5;
}

- (DAPropertyCompareString)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(DAPropertyCompareString *)self init];
  if (!v7)
  {
    if (error)
    {
      v23 = objc_opt_class();
      DAErrorF(350001, "%@ init failed", v16, v17, v18, v19, v20, v21, v23);
LABEL_11:
      *error = v14 = 0;
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_6;
  }

  if (MEMORY[0x24C1DC9E0](objectCopy) != MEMORY[0x277D86468])
  {
    if (error)
    {
      DAErrorF(350004, "XPC non-dict", v8, v9, v10, v11, v12, v13, v22);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (CUXPCDecodeUInt64RangedEx() == 6)
  {
    v7->_compareOptions = 0;
  }

  CUXPCDecodeNSString();
  v14 = v7;
LABEL_6:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  compareOptions = self->_compareOptions;
  v7 = coderCopy;
  if (compareOptions)
  {
    [coderCopy encodeInteger:compareOptions forKey:@"pCso"];
    coderCopy = v7;
  }

  string = self->_string;
  if (string)
  {
    [v7 encodeObject:string forKey:@"pCs"];
    coderCopy = v7;
  }
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  compareOptions = self->_compareOptions;
  if (compareOptions)
  {
    xpc_dictionary_set_uint64(objectCopy, "pCso", compareOptions);
  }

  string = self->_string;
  xdict = v5;
  uTF8String = [(NSString *)string UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "pCs", uTF8String);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_string copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_compareOptions;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v6 = equalCopy;
    if ([(DAPropertyCompareString *)v6 isMemberOfClass:objc_opt_class()]&& (compareOptions = self->_compareOptions, compareOptions == [(DAPropertyCompareString *)v6 compareOptions]))
    {
      string = self->_string;
      string = [(DAPropertyCompareString *)v6 string];
      v10 = string;
      v11 = string;
      v12 = v11;
      if (v10 == v11)
      {
        v13 = 1;
      }

      else if ((v10 != 0) == (v11 == 0))
      {
        v13 = 0;
      }

      else
      {
        v13 = [(NSString *)v10 isEqual:v11];
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  string = self->_string;
  if (string)
  {
    v11 = string;
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  if (self->_compareOptions)
  {
    compareOptions = self->_compareOptions;
    CUAppendF();
    v7 = v4;

    v4 = v7;
  }

  v8 = &stru_285B4C350;
  if (v4)
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (unint64_t)hash
{
  string = self->_string;
  if (string)
  {
    v4 = [(NSString *)string hash]^ 0x13;
  }

  else
  {
    v4 = 19;
  }

  return self->_compareOptions + v4;
}

@end