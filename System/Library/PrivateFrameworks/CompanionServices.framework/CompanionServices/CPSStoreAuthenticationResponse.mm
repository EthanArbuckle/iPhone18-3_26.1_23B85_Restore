@interface CPSStoreAuthenticationResponse
- (CPSStoreAuthenticationResponse)initWithAuthenticationResult:(id)result;
- (CPSStoreAuthenticationResponse)initWithCoder:(id)coder;
- (id)description;
@end

@implementation CPSStoreAuthenticationResponse

- (CPSStoreAuthenticationResponse)initWithAuthenticationResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = CPSStoreAuthenticationResponse;
  v6 = [(CPSStoreAuthenticationResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationResult, result);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_authenticationResult withName:@"authenticationResult"];
  build = [v3 build];

  return build;
}

- (CPSStoreAuthenticationResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CPSStoreAuthenticationResponse;
  v5 = [(CPSStoreAuthenticationResponse *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:getAMSDelegateAuthenticateResultClass() forKey:@"authenticationResult"];
    authenticationResult = v5->_authenticationResult;
    v5->_authenticationResult = v6;
  }

  return v5;
}

@end