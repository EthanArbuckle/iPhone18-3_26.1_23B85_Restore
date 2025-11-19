@interface PKPeerPaymentAddAssociatedAccountResponse
- (PKPeerPaymentAddAssociatedAccountResponse)initWithData:(id)a3;
@end

@implementation PKPeerPaymentAddAssociatedAccountResponse

- (PKPeerPaymentAddAssociatedAccountResponse)initWithData:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = PKPeerPaymentAddAssociatedAccountResponse;
  v3 = [(PKWebServiceResponse *)&v14 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [PKPeerPaymentAssociatedAccountInformation alloc];
      v8 = [MEMORY[0x1E695DF00] date];
      v9 = [(PKPeerPaymentAssociatedAccountInformation *)v7 initWithDictionary:v6 lastUpdated:v8];

      associatedAccountInformation = v4->_associatedAccountInformation;
      v4->_associatedAccountInformation = v9;
    }

    else
    {
      v8 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543362;
        v16 = v12;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Malformed PKPeerPaymentAddAssociatedAccountResponse: expected dictionary and received %{public}@", buf, 0xCu);
      }
    }
  }

  return v4;
}

@end