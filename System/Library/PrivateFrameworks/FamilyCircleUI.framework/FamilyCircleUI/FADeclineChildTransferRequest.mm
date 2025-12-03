@interface FADeclineChildTransferRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation FADeclineChildTransferRequest

- (id)urlString
{
  urlConfiguration = [MEMORY[0x277CEC860] urlConfiguration];
  rejectChildTransferURL = [urlConfiguration rejectChildTransferURL];

  return rejectChildTransferURL;
}

- (id)urlRequest
{
  v11[1] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = FADeclineChildTransferRequest;
  urlRequest = [(AAFamilyRequest *)&v9 urlRequest];
  v4 = [urlRequest mutableCopy];

  requestCode = self->_requestCode;
  if (requestCode)
  {
    v10 = @"request-code";
    v11[0] = requestCode;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v4 aa_setBodyWithParameters:v6];
  }

  [v4 setValue:@"application/xml" forHTTPHeaderField:@"Content-Type"];
  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

@end