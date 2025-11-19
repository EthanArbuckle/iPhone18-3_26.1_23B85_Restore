@interface CPSUserDefaultsRequest
- (CPSUserDefaultsRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSUserDefaultsRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_readInfo withName:@"readInfo"];
  v5 = [v3 appendObject:self->_writeInfo withName:@"writeInfo"];
  v6 = [v3 build];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSUserDefaultsRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_readInfo forKey:{@"readInfo", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_writeInfo forKey:@"writeInfo"];
}

- (CPSUserDefaultsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPSUserDefaultsRequest;
  v5 = [(CPSAuthenticationRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeArrayOfObjectsOfClass:v6 forKey:@"readInfo"];
    readInfo = v5->_readInfo;
    v5->_readInfo = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeArrayOfObjectsOfClass:v9 forKey:@"writeInfo"];
    writeInfo = v5->_writeInfo;
    v5->_writeInfo = v10;
  }

  return v5;
}

@end