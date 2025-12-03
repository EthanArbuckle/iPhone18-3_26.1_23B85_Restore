@interface PKAccountWebServiceGenerateTopUpTokenResponse
- (PKAccountWebServiceGenerateTopUpTokenResponse)initWithData:(id)data account:(id)account request:(id)request;
@end

@implementation PKAccountWebServiceGenerateTopUpTokenResponse

- (PKAccountWebServiceGenerateTopUpTokenResponse)initWithData:(id)data account:(id)account request:(id)request
{
  accountCopy = account;
  v16.receiver = self;
  v16.super_class = PKAccountWebServiceGenerateTopUpTokenResponse;
  v8 = [(PKWebServiceResponse *)&v16 initWithData:data];
  v9 = v8;
  if (v8)
  {
    jSONObject = [(PKWebServiceResponse *)v8 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = jSONObject;
      v12 = [PKAppleBalanceInStoreTopUpToken alloc];
      accountIdentifier = [accountCopy accountIdentifier];
      v14 = [(PKAppleBalanceInStoreTopUpToken *)v12 initWithDictionary:v11 accountIdentifier:accountIdentifier];

      if (PKVerifySignatureForInStoreTopUpToken(v14))
      {
        objc_storeStrong(&v9->_token, v14);
      }
    }
  }

  return v9;
}

@end