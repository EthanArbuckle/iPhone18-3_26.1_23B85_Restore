@interface CPSUnrecognizedUserRequest
- (CPSUnrecognizedUserRequest)initWithCoder:(id)a3;
- (CPSUnrecognizedUserRequest)initWithXPCDictionary:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation CPSUnrecognizedUserRequest

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_userPersonaUniqueString withName:@"userPersonaUniqueString"];
  v5 = [v3 build];

  return v5;
}

- (CPSUnrecognizedUserRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CPSUnrecognizedUserRequest;
  v5 = [(CPSAuthenticationRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"userPersonaUniqueString"];
    userPersonaUniqueString = v5->_userPersonaUniqueString;
    v5->_userPersonaUniqueString = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPSUnrecognizedUserRequest;
  v4 = a3;
  [(CPSAuthenticationRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_userPersonaUniqueString forKey:{@"userPersonaUniqueString", v5.receiver, v5.super_class}];
}

- (CPSUnrecognizedUserRequest)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CPSUnrecognizedUserRequest;
  v5 = [(CPSAuthenticationRequest *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CF0D20] coderWithMessage:v4];
    v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(CPSAuthenticationRequest *)v5 setIdentifier:v7];

    v8 = objc_opt_self();
    v9 = [v6 decodeObjectOfClass:v8 forKey:@"userPersonaUniqueString"];
    userPersonaUniqueString = v5->_userPersonaUniqueString;
    v5->_userPersonaUniqueString = v9;
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v5 = [MEMORY[0x277CF0D20] coderWithMessage:a3];
  v4 = [(CPSAuthenticationRequest *)self identifier];
  [v5 encodeObject:v4 forKey:@"identifier"];

  [v5 encodeObject:self->_userPersonaUniqueString forKey:@"userPersonaUniqueString"];
}

@end