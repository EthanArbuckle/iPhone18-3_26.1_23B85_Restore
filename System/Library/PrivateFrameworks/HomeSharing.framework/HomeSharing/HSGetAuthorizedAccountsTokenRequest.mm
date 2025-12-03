@interface HSGetAuthorizedAccountsTokenRequest
+ (id)requestWithDSID:(unint64_t)d deviceGUID:(id)iD;
- (HSGetAuthorizedAccountsTokenRequest)initWithDSID:(unint64_t)d deviceGUID:(id)iD;
- (id)canonicalResponseForResponse:(id)response;
@end

@implementation HSGetAuthorizedAccountsTokenRequest

- (id)canonicalResponseForResponse:(id)response
{
  v3 = [(HSResponse *)HSGetAuthorizedAccountsTokenResponse responseWithResponse:response];
  responseData = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:responseData];

  v6 = [v5 objectForKey:@"com.apple.itunes.drm-token-data"];
  [v3 setTokenData:v6];

  return v3;
}

- (HSGetAuthorizedAccountsTokenRequest)initWithDSID:(unint64_t)d deviceGUID:(id)iD
{
  iDCopy = iD;
  v10.receiver = self;
  v10.super_class = HSGetAuthorizedAccountsTokenRequest;
  v7 = [(HSRequest *)&v10 initWithAction:@"get-authorized-account-token"];
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", d];
    [(HSRequest *)v7 setValue:v8 forArgument:@"dsid"];

    [(HSRequest *)v7 setValue:iDCopy forArgument:@"device-machine-guid"];
  }

  return v7;
}

+ (id)requestWithDSID:(unint64_t)d deviceGUID:(id)iD
{
  iDCopy = iD;
  v7 = [[self alloc] initWithDSID:d deviceGUID:iDCopy];

  return v7;
}

@end