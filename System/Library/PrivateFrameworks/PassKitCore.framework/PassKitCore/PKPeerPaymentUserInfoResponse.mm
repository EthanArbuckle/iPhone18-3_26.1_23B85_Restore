@interface PKPeerPaymentUserInfoResponse
- (PKPeerPaymentUserInfoResponse)initWithData:(id)data;
@end

@implementation PKPeerPaymentUserInfoResponse

- (PKPeerPaymentUserInfoResponse)initWithData:(id)data
{
  v10.receiver = self;
  v10.super_class = PKPeerPaymentUserInfoResponse;
  v3 = [(PKWebServiceResponse *)&v10 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [[PKPeerPaymentUserInfo alloc] initWithDictionary:v6];

      userInfo = v4->_userInfo;
      v4->_userInfo = v7;
    }
  }

  return v4;
}

@end