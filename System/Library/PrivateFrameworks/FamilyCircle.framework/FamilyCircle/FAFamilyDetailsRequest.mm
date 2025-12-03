@interface FAFamilyDetailsRequest
- (FAFamilyDetailsRequest)initWithAccount:(id)account;
- (id)urlRequest;
@end

@implementation FAFamilyDetailsRequest

- (FAFamilyDetailsRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = FAFamilyDetailsRequest;
  v6 = [(FAFamilyDetailsRequest *)&v9 initWithAccount:accountCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)urlRequest
{
  v8.receiver = self;
  v8.super_class = FAFamilyDetailsRequest;
  urlRequest = [(FAFamilyDetailsRequest *)&v8 urlRequest];
  v4 = [urlRequest mutableCopy];

  v5 = [[FARequestConfigurator alloc] initWithAccount:self->_account];
  [v5 addFresnoPayloadToRequest:v4 additionalPayload:0];
  v6 = [v4 copy];

  return v6;
}

@end