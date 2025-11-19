@interface HSGetAuthorizedAccountsTokenRequest
+ (id)requestWithDSID:(unint64_t)a3 deviceGUID:(id)a4;
- (HSGetAuthorizedAccountsTokenRequest)initWithDSID:(unint64_t)a3 deviceGUID:(id)a4;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation HSGetAuthorizedAccountsTokenRequest

- (id)canonicalResponseForResponse:(id)a3
{
  v3 = [(HSResponse *)HSGetAuthorizedAccountsTokenResponse responseWithResponse:a3];
  v4 = [v3 responseData];
  v5 = [HSResponseDataParser parseResponseData:v4];

  v6 = [v5 objectForKey:@"com.apple.itunes.drm-token-data"];
  [v3 setTokenData:v6];

  return v3;
}

- (HSGetAuthorizedAccountsTokenRequest)initWithDSID:(unint64_t)a3 deviceGUID:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = HSGetAuthorizedAccountsTokenRequest;
  v7 = [(HSRequest *)&v10 initWithAction:@"get-authorized-account-token"];
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a3];
    [(HSRequest *)v7 setValue:v8 forArgument:@"dsid"];

    [(HSRequest *)v7 setValue:v6 forArgument:@"device-machine-guid"];
  }

  return v7;
}

+ (id)requestWithDSID:(unint64_t)a3 deviceGUID:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithDSID:a3 deviceGUID:v6];

  return v7;
}

@end