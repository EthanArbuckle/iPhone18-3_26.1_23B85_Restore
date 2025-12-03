@interface CPSUserDefaultsRequest
- (CPSUserDefaultsRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSUserDefaultsRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_readInfo withName:@"readInfo"];
  v5 = [v3 appendObject:self->_writeInfo withName:@"writeInfo"];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSUserDefaultsRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_readInfo forKey:{@"readInfo", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_writeInfo forKey:@"writeInfo"];
}

- (CPSUserDefaultsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CPSUserDefaultsRequest;
  v5 = [(CPSAuthenticationRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeArrayOfObjectsOfClass:v6 forKey:@"readInfo"];
    readInfo = v5->_readInfo;
    v5->_readInfo = v7;

    v9 = objc_opt_self();
    v10 = [coderCopy decodeArrayOfObjectsOfClass:v9 forKey:@"writeInfo"];
    writeInfo = v5->_writeInfo;
    v5->_writeInfo = v10;
  }

  return v5;
}

@end