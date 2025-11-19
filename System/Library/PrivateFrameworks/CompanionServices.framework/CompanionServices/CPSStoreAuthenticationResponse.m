@interface CPSStoreAuthenticationResponse
- (CPSStoreAuthenticationResponse)initWithAuthenticationResult:(id)a3;
- (CPSStoreAuthenticationResponse)initWithCoder:(id)a3;
- (id)description;
@end

@implementation CPSStoreAuthenticationResponse

- (CPSStoreAuthenticationResponse)initWithAuthenticationResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPSStoreAuthenticationResponse;
  v6 = [(CPSStoreAuthenticationResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationResult, a3);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_authenticationResult withName:@"authenticationResult"];
  v5 = [v3 build];

  return v5;
}

- (CPSStoreAuthenticationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPSStoreAuthenticationResponse;
  v5 = [(CPSStoreAuthenticationResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:getAMSDelegateAuthenticateResultClass() forKey:@"authenticationResult"];
    authenticationResult = v5->_authenticationResult;
    v5->_authenticationResult = v6;
  }

  return v5;
}

@end