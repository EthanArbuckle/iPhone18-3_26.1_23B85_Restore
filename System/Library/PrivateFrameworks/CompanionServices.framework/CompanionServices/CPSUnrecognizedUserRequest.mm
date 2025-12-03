@interface CPSUnrecognizedUserRequest
- (CPSUnrecognizedUserRequest)initWithCoder:(id)coder;
- (CPSUnrecognizedUserRequest)initWithXPCDictionary:(id)dictionary;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation CPSUnrecognizedUserRequest

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_userPersonaUniqueString withName:@"userPersonaUniqueString"];
  build = [v3 build];

  return build;
}

- (CPSUnrecognizedUserRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CPSUnrecognizedUserRequest;
  v5 = [(CPSAuthenticationRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"userPersonaUniqueString"];
    userPersonaUniqueString = v5->_userPersonaUniqueString;
    v5->_userPersonaUniqueString = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPSUnrecognizedUserRequest;
  coderCopy = coder;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_userPersonaUniqueString forKey:{@"userPersonaUniqueString", v5.receiver, v5.super_class}];
}

- (CPSUnrecognizedUserRequest)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = CPSUnrecognizedUserRequest;
  v5 = [(CPSAuthenticationRequest *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CF0D20] coderWithMessage:dictionaryCopy];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(CPSAuthenticationRequest *)v5 setIdentifier:v7];

    v8 = objc_opt_self();
    v9 = [v6 decodeObjectOfClass:v8 forKey:@"userPersonaUniqueString"];
    userPersonaUniqueString = v5->_userPersonaUniqueString;
    v5->_userPersonaUniqueString = v9;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v5 = [MEMORY[0x277CF0D20] coderWithMessage:dictionary];
  identifier = [(CPSAuthenticationRequest *)self identifier];
  [v5 encodeObject:identifier forKey:@"identifier"];

  [v5 encodeObject:self->_userPersonaUniqueString forKey:@"userPersonaUniqueString"];
}

@end