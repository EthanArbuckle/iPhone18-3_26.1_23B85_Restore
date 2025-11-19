@interface PKTransactionReceiptAuthorizationResponse
- (PKTransactionReceiptAuthorizationResponse)initWithData:(id)a3;
@end

@implementation PKTransactionReceiptAuthorizationResponse

- (PKTransactionReceiptAuthorizationResponse)initWithData:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = PKTransactionReceiptAuthorizationResponse;
  v3 = [(PKWebServiceResponse *)&v17 initWithData:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKWebServiceResponse *)v3 JSONObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 PKStringForKey:@"authToken"];
      authorizationToken = v4->_authorizationToken;
      v4->_authorizationToken = v6;

      v8 = [v5 PKStringForKey:@"signature"];
      v9 = v8;
      if (!v8)
      {
LABEL_9:

        return v4;
      }

      v10 = [(PKTransactionReceiptAuthorizationResponse *)v8 pk_decodeURLBase64];
      p_super = &v4->_signature->super;
      v4->_signature = v10;
    }

    else
    {
      p_super = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_opt_class();
        *buf = 138543618;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        v15 = v14;
        _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "Malformed response: expected dictionary and received %{public}@ inside %@", buf, 0x16u);
      }

      v9 = v4;
      v4 = 0;
    }

    goto LABEL_9;
  }

  return v4;
}

@end