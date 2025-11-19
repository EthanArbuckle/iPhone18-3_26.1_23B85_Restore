@interface FAFamilyDetailsRequest
- (FAFamilyDetailsRequest)initWithAccount:(id)a3;
- (id)urlRequest;
@end

@implementation FAFamilyDetailsRequest

- (FAFamilyDetailsRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FAFamilyDetailsRequest;
  v6 = [(FAFamilyDetailsRequest *)&v9 initWithAccount:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (id)urlRequest
{
  v8.receiver = self;
  v8.super_class = FAFamilyDetailsRequest;
  v3 = [(FAFamilyDetailsRequest *)&v8 urlRequest];
  v4 = [v3 mutableCopy];

  v5 = [[FARequestConfigurator alloc] initWithAccount:self->_account];
  [v5 addFresnoPayloadToRequest:v4 additionalPayload:0];
  v6 = [v4 copy];

  return v6;
}

@end