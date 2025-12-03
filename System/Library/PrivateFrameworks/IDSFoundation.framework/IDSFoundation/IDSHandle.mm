@interface IDSHandle
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandle:(id)handle;
- (IDSHandle)initWithURI:(id)i isUserVisible:(BOOL)visible validationStatus:(int64_t)status;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSHandle

- (IDSHandle)initWithURI:(id)i isUserVisible:(BOOL)visible validationStatus:(int64_t)status
{
  iCopy = i;
  if (iCopy)
  {
    v14.receiver = self;
    v14.super_class = IDSHandle;
    v10 = [(IDSHandle *)&v14 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_URI, i);
      v11->_isUserVisible = visible;
      v11->_validationStatus = status;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"NO";
  if (self->_isUserVisible)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p URI:%@, visible:%@, valStatus: %ld>", v5, self, self->_URI, v7, self->_validationStatus];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSHandle *)self isEqualToHandle:equalCopy];

  return v5;
}

- (BOOL)isEqualToHandle:(id)handle
{
  handleCopy = handle;
  if (self == handleCopy)
  {
    v9 = 1;
  }

  else
  {
    isUserVisible = [(IDSHandle *)self isUserVisible];
    if (isUserVisible == [(IDSHandle *)handleCopy isUserVisible]&& (v6 = [(IDSHandle *)self validationStatus], v6 == [(IDSHandle *)handleCopy validationStatus]))
    {
      v7 = [(IDSHandle *)self URI];
      v8 = [(IDSHandle *)handleCopy URI];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(IDSHandle *)self URI];
  v4 = [v3 hash];

  v5 = [(IDSHandle *)self validationStatus]- v4 + 32 * v4;
  isUserVisible = [(IDSHandle *)self isUserVisible];
  v7 = 1237;
  if (isUserVisible)
  {
    v7 = 1231;
  }

  return v7 - v5 + 32 * v5 + 29791;
}

@end