@interface IDSHandle
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandle:(id)a3;
- (IDSHandle)initWithURI:(id)a3 isUserVisible:(BOOL)a4 validationStatus:(int64_t)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSHandle

- (IDSHandle)initWithURI:(id)a3 isUserVisible:(BOOL)a4 validationStatus:(int64_t)a5
{
  v9 = a3;
  if (v9)
  {
    v14.receiver = self;
    v14.super_class = IDSHandle;
    v10 = [(IDSHandle *)&v14 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_URI, a3);
      v11->_isUserVisible = a4;
      v11->_validationStatus = a5;
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSHandle *)self isEqualToHandle:v4];

  return v5;
}

- (BOOL)isEqualToHandle:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(IDSHandle *)self isUserVisible];
    if (v5 == [(IDSHandle *)v4 isUserVisible]&& (v6 = [(IDSHandle *)self validationStatus], v6 == [(IDSHandle *)v4 validationStatus]))
    {
      v7 = [(IDSHandle *)self URI];
      v8 = [(IDSHandle *)v4 URI];
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
  v6 = [(IDSHandle *)self isUserVisible];
  v7 = 1237;
  if (v6)
  {
    v7 = 1231;
  }

  return v7 - v5 + 32 * v5 + 29791;
}

@end