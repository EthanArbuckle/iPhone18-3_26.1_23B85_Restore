@interface PKAccountWebServiceInstallmentAuthorizationResponse
- (PKAccountWebServiceInstallmentAuthorizationResponse)initWithData:(id)data;
@end

@implementation PKAccountWebServiceInstallmentAuthorizationResponse

- (PKAccountWebServiceInstallmentAuthorizationResponse)initWithData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKAccountWebServiceInstallmentAuthorizationResponse;
  v3 = [(PKWebServiceResponse *)&v16 initWithData:data];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  jSONObject = [(PKWebServiceResponse *)v3 JSONObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected dictionary and received %{public}@", buf, 0x16u);

LABEL_10:
    }

LABEL_11:

    v8 = 0;
    goto LABEL_12;
  }

  v6 = [jSONObject PKStringForKey:@"authorizationToken"];
  authorizationToken = v4->_authorizationToken;
  v4->_authorizationToken = v6;

  if (!v4->_authorizationToken)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v11 = NSStringFromClass(v14);
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Malformed %{public}@: expected authorizationToken", buf, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_5:
  v8 = v4;
LABEL_12:

  return v8;
}

@end