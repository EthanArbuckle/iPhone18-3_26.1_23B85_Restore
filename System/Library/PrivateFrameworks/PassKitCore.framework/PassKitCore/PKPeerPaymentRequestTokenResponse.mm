@interface PKPeerPaymentRequestTokenResponse
- (PKPeerPaymentRequestTokenResponse)initWithCoder:(id)a3;
- (PKPeerPaymentRequestTokenResponse)initWithData:(id)a3 deviceScoreIdentifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentRequestTokenResponse

- (PKPeerPaymentRequestTokenResponse)initWithData:(id)a3 deviceScoreIdentifier:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v20.receiver = self;
  v20.super_class = PKPeerPaymentRequestTokenResponse;
  v7 = [(PKWebServiceResponse *)&v20 initWithData:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [(PKWebServiceResponse *)v7 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [v10 PKBoolForKey:@"success"];
      v8->_success = v11;
      if (v11)
      {
        v12 = [v10 PKStringForKey:@"requestToken"];
        v13 = [v10 PKStringForKey:@"expiryDate"];
        v14 = PKISO8601DateFromDateStringContainingFractionalSeconds(v13);
        v15 = [[PKPeerPaymentRequestToken alloc] initWithRequestToken:v12 deviceScoreIdentifier:v6 expiryDate:v14];
        requestToken = v8->_requestToken;
        v8->_requestToken = v15;

LABEL_7:
      }
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v12 = NSStringFromClass(v17);
        v18 = objc_opt_class();
        v13 = NSStringFromClass(v18);
        *buf = 138543618;
        v22 = v12;
        v23 = 2114;
        v24 = v13;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
        goto LABEL_7;
      }
    }
  }

  return v8;
}

- (PKPeerPaymentRequestTokenResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentRequestTokenResponse;
  v5 = [(PKWebServiceResponse *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestToken"];
    requestToken = v5->_requestToken;
    v5->_requestToken = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentRequestTokenResponse;
  v4 = a3;
  [(PKWebServiceResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_requestToken forKey:{@"requestToken", v5.receiver, v5.super_class}];
}

@end