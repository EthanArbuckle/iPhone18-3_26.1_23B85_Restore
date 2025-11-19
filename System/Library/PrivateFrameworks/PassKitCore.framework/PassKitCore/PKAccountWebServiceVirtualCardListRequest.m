@interface PKAccountWebServiceVirtualCardListRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceVirtualCardListRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_baseURL)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v17 = v11;
    v18 = 2082;
    v19 = "_baseURL";
LABEL_11:
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_12;
  }

  if (!v4)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    *buf = 138543618;
    v17 = v11;
    v18 = 2082;
    v19 = "appleAccountInformation";
    goto LABEL_11;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    v15[0] = @"accounts";
    v15[1] = accountIdentifier;
    v15[2] = @"virtualCards";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:v5];
    [v8 setHTTPMethod:@"GET"];
    v9 = [v8 copy];

    goto LABEL_13;
  }

  v7 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v11 = NSStringFromClass(v13);
    *buf = 138543618;
    v17 = v11;
    v18 = 2082;
    v19 = "_accountIdentifier";
    goto LABEL_11;
  }

LABEL_12:
  v9 = 0;
LABEL_13:

  return v9;
}

@end