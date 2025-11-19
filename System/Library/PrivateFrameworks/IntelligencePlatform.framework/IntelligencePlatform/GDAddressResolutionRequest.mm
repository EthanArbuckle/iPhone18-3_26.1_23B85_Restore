@interface GDAddressResolutionRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAddressResolutionRequest:(id)a3;
- (GDAddressResolutionRequest)initWithAddressString:(id)a3;
- (GDAddressResolutionRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDAddressResolutionRequest

- (BOOL)isEqualToAddressResolutionRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4)
  {
    addressString = self->_addressString;
    v7 = [(GDAddressResolutionRequest *)v4 addressString];
    v8 = [(NSString *)addressString isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDAddressResolutionRequest *)self isEqualToAddressResolutionRequest:v4];
  }

  return v5;
}

- (GDAddressResolutionRequest)initWithAddressString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDAddressResolutionRequest;
  v6 = [(GDAddressResolutionRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_addressString, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GDAddressResolutionRequest allocWithZone:a3];
  addressString = self->_addressString;

  return [(GDAddressResolutionRequest *)v4 initWithAddressString:addressString];
}

- (GDAddressResolutionRequest)initWithCoder:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_addressString);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    self = [(GDAddressResolutionRequest *)self initWithAddressString:v7];
    v8 = self;
  }

  else
  {
    v9 = [v4 error];

    if (!v9)
    {
      v10 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"GDAddressResolutionRequest addressString could not be decoded";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v10 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v11];
      [v4 failWithError:v12];
    }

    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  addressString = self->_addressString;
  v4 = a3;
  v5 = NSStringFromSelector(sel_addressString);
  [v4 encodeObject:addressString forKey:v5];
}

@end