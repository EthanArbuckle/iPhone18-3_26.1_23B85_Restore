@interface FASharedServicesRequest
- (FASharedServicesRequest)initWithAppleAccount:(id)account urlString:(id)string;
- (id)urlRequest;
@end

@implementation FASharedServicesRequest

- (FASharedServicesRequest)initWithAppleAccount:(id)account urlString:(id)string
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = FASharedServicesRequest;
  v8 = [(AARequest *)&v13 initWithURLString:string];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appleAccount, account);
    v10 = [objc_alloc(MEMORY[0x277D082E8]) initWithAccount:v9->_appleAccount];
    requestConfigurator = v9->_requestConfigurator;
    v9->_requestConfigurator = v10;
  }

  return v9;
}

- (id)urlRequest
{
  v6.receiver = self;
  v6.super_class = FASharedServicesRequest;
  urlRequest = [(AARequest *)&v6 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 setHTTPMethod:@"POST"];
  [(FARequestConfigurator *)self->_requestConfigurator setAttachSetupHeader:0];
  [(FARequestConfigurator *)self->_requestConfigurator addFresnoHeadersToRequest:v4];
  [(FARequestConfigurator *)self->_requestConfigurator addFresnoPayloadToRequest:v4 additionalPayload:0];

  return v4;
}

@end