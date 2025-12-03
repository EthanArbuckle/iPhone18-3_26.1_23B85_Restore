@interface PKApplePayTrustHashResponse
- (PKApplePayTrustHashResponse)initWithCoder:(id)coder;
- (PKApplePayTrustHashResponse)initWithData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplePayTrustHashResponse

- (PKApplePayTrustHashResponse)initWithData:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKApplePayTrustHashResponse;
  v3 = [(PKWebServiceResponse *)&v17 initWithData:data];
  v4 = v3;
  if (v3)
  {
    jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = jSONObject;
      v7 = [v6 PKStringForKey:@"referenceIdentifier"];
      referenceIdentifier = v4->_referenceIdentifier;
      v4->_referenceIdentifier = v7;

      v9 = [v6 PKStringForKey:@"nonce"];

      pk_decodeHexadecimal = [v9 pk_decodeHexadecimal];
      nonce = v4->_nonce;
      v4->_nonce = pk_decodeHexadecimal;
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

- (PKApplePayTrustHashResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKApplePayTrustHashResponse;
  v5 = [(PKWebServiceResponse *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplePayTrustHashResponse;
  coderCopy = coder;
  [(PKWebServiceResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_referenceIdentifier forKey:{@"referenceIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
}

@end