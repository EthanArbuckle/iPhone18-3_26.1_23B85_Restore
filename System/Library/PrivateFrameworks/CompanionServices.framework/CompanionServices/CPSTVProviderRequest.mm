@interface CPSTVProviderRequest
- (CPSTVProviderRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSTVProviderRequest

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_providerURL withName:@"providerURL" skipIfNil:1];
  v5 = [v3 appendObject:self->_providerImage withName:@"providerImage" skipIfNil:1];
  [v3 appendString:self->_providerName withName:@"providerName" skipIfEmpty:1];
  [v3 appendString:self->_providerCode withName:@"providerCode" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSTVProviderRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_providerURL forKey:{@"providerURL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_providerImage forKey:@"providerImage"];
  [coderCopy encodeObject:self->_providerName forKey:@"providerName"];
  [coderCopy encodeObject:self->_providerCode forKey:@"providerCode"];
}

- (CPSTVProviderRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CPSTVProviderRequest;
  v5 = [(CPSAuthenticationRequest *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"providerURL"];
    providerURL = v5->_providerURL;
    v5->_providerURL = v7;

    getUIImageClass();
    v9 = objc_opt_self();
    v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"providerImage"];
    providerImage = v5->_providerImage;
    v5->_providerImage = v10;

    v12 = objc_opt_self();
    v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"providerName"];
    providerName = v5->_providerName;
    v5->_providerName = v13;

    v15 = objc_opt_self();
    v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"providerCode"];
    providerCode = v5->_providerCode;
    v5->_providerCode = v16;
  }

  return v5;
}

@end