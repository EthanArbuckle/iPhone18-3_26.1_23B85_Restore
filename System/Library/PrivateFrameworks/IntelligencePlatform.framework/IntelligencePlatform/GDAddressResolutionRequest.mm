@interface GDAddressResolutionRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAddressResolutionRequest:(id)request;
- (GDAddressResolutionRequest)initWithAddressString:(id)string;
- (GDAddressResolutionRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDAddressResolutionRequest

- (BOOL)isEqualToAddressResolutionRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy == self)
  {
    v8 = 1;
  }

  else if (requestCopy)
  {
    addressString = self->_addressString;
    addressString = [(GDAddressResolutionRequest *)requestCopy addressString];
    v8 = [(NSString *)addressString isEqualToString:addressString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(GDAddressResolutionRequest *)self isEqualToAddressResolutionRequest:equalCopy];
  }

  return v5;
}

- (GDAddressResolutionRequest)initWithAddressString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = GDAddressResolutionRequest;
  v6 = [(GDAddressResolutionRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_addressString, string);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GDAddressResolutionRequest allocWithZone:zone];
  addressString = self->_addressString;

  return [(GDAddressResolutionRequest *)v4 initWithAddressString:addressString];
}

- (GDAddressResolutionRequest)initWithCoder:(id)coder
{
  v16[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_addressString);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    self = [(GDAddressResolutionRequest *)self initWithAddressString:v7];
    selfCopy = self;
  }

  else
  {
    error = [coderCopy error];

    if (!error)
    {
      v10 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A578];
      v16[0] = @"GDAddressResolutionRequest addressString could not be decoded";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v12 = [v10 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v11];
      [coderCopy failWithError:v12];
    }

    selfCopy = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  addressString = self->_addressString;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_addressString);
  [coderCopy encodeObject:addressString forKey:v5];
}

@end