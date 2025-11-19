@interface CPSTVProviderRequest
- (CPSTVProviderRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSTVProviderRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_providerURL withName:@"providerURL" skipIfNil:1];
  v5 = [v3 appendObject:self->_providerImage withName:@"providerImage" skipIfNil:1];
  [v3 appendString:self->_providerName withName:@"providerName" skipIfEmpty:1];
  [v3 appendString:self->_providerCode withName:@"providerCode" skipIfEmpty:1];
  v6 = [v3 build];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSTVProviderRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_providerURL forKey:{@"providerURL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_providerImage forKey:@"providerImage"];
  [v4 encodeObject:self->_providerName forKey:@"providerName"];
  [v4 encodeObject:self->_providerCode forKey:@"providerCode"];
}

- (CPSTVProviderRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CPSTVProviderRequest;
  v5 = [(CPSAuthenticationRequest *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"providerURL"];
    providerURL = v5->_providerURL;
    v5->_providerURL = v7;

    getUIImageClass();
    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"providerImage"];
    providerImage = v5->_providerImage;
    v5->_providerImage = v10;

    v12 = objc_opt_self();
    v13 = [v4 decodeObjectOfClass:v12 forKey:@"providerName"];
    providerName = v5->_providerName;
    v5->_providerName = v13;

    v15 = objc_opt_self();
    v16 = [v4 decodeObjectOfClass:v15 forKey:@"providerCode"];
    providerCode = v5->_providerCode;
    v5->_providerCode = v16;
  }

  return v5;
}

@end