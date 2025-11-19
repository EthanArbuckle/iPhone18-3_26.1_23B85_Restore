@interface PKApplePayTrustHashResponse
- (PKApplePayTrustHashResponse)initWithCoder:(id)a3;
- (PKApplePayTrustHashResponse)initWithData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplePayTrustHashResponse

- (PKApplePayTrustHashResponse)initWithData:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKApplePayTrustHashResponse;
  v3 = [(PKWebServiceResponse *)&v17 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [v6 PKStringForKey:@"referenceIdentifier"];
      referenceIdentifier = v4->_referenceIdentifier;
      v4->_referenceIdentifier = v7;

      v9 = [v6 PKStringForKey:@"nonce"];

      v10 = [v9 pk_decodeHexadecimal];
      nonce = v4->_nonce;
      v4->_nonce = v10;
    }

    else
    {
      v9 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138543618;
        v19 = v13;
        v20 = 2114;
        v21 = v15;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);
      }
    }
  }

  return v4;
}

- (PKApplePayTrustHashResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKApplePayTrustHashResponse;
  v5 = [(PKWebServiceResponse *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplePayTrustHashResponse;
  v4 = a3;
  [(PKWebServiceResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_referenceIdentifier forKey:{@"referenceIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_nonce forKey:@"nonce"];
}

@end