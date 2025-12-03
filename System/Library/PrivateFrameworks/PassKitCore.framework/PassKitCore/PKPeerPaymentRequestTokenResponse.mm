@interface PKPeerPaymentRequestTokenResponse
- (PKPeerPaymentRequestTokenResponse)initWithCoder:(id)coder;
- (PKPeerPaymentRequestTokenResponse)initWithData:(id)data deviceScoreIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentRequestTokenResponse

- (PKPeerPaymentRequestTokenResponse)initWithData:(id)data deviceScoreIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = PKPeerPaymentRequestTokenResponse;
  v7 = [(PKWebServiceResponse *)&v20 initWithData:data];
  v8 = v7;
  if (v7)
  {
    jSONObject = [(PKWebServiceResponse *)v7 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = jSONObject;
      v11 = [v10 PKBoolForKey:@"success"];
      v8->_success = v11;
      if (v11)
      {
        v12 = [v10 PKStringForKey:@"requestToken"];
        v13 = [v10 PKStringForKey:@"expiryDate"];
        v14 = PKISO8601DateFromDateStringContainingFractionalSeconds(v13);
        v15 = [[PKPeerPaymentRequestToken alloc] initWithRequestToken:v12 deviceScoreIdentifier:identifierCopy expiryDate:v14];
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

- (PKPeerPaymentRequestTokenResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentRequestTokenResponse;
  v5 = [(PKWebServiceResponse *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestToken"];
    requestToken = v5->_requestToken;
    v5->_requestToken = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentRequestTokenResponse;
  coderCopy = coder;
  [(PKWebServiceResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_requestToken forKey:{@"requestToken", v5.receiver, v5.super_class}];
}

@end