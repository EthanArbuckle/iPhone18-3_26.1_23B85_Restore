@interface PKPeerPaymentAssociatedAccountActionResponse
- (PKPeerPaymentAssociatedAccountActionResponse)initWithData:(id)data;
@end

@implementation PKPeerPaymentAssociatedAccountActionResponse

- (PKPeerPaymentAssociatedAccountActionResponse)initWithData:(id)data
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKPeerPaymentAssociatedAccountActionResponse;
  v3 = [(PKWebServiceResponse *)&v14 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [PKPeerPaymentAssociatedAccountInformation alloc];
      date = [MEMORY[0x1E695DF00] date];
      v9 = [(PKPeerPaymentAssociatedAccountInformation *)v7 initWithDictionary:v6 lastUpdated:date];

      associatedAccountInformation = v4->_associatedAccountInformation;
      v4->_associatedAccountInformation = v9;
    }

    else
    {
      date = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(date, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&dword_1AD337000, date, OS_LOG_TYPE_DEFAULT, "Malformed PKPeerPaymentAssociatedAccountActionResponse: expected dictionary and received %{public}@", buf, 0xCu);
      }
    }
  }

  return v4;
}

@end