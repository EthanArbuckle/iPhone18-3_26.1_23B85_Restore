@interface PKAccountWebServiceAccountRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceAccountRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v23 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  if (!PKRunningInPassd())
  {
    v9 = 0;
    goto LABEL_19;
  }

  if (!self->_baseURL)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543618;
    v20 = v12;
    v21 = 2082;
    v22 = "_baseURL";
LABEL_14:
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_15;
  }

  if (!informationCopy)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    *buf = 138543618;
    v20 = v12;
    v21 = 2082;
    v22 = "appleAccountInformation";
    goto LABEL_14;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    if (self->_extended)
    {
      v18[0] = @"accounts";
      v18[1] = accountIdentifier;
      v18[2] = @"extended";
      v6 = MEMORY[0x1E695DEC8];
      v7 = v18;
      v8 = 3;
    }

    else
    {
      v17[0] = @"accounts";
      v17[1] = accountIdentifier;
      v6 = MEMORY[0x1E695DEC8];
      v7 = v17;
      v8 = 2;
    }

    v10 = [v6 arrayWithObjects:v7 count:v8];
    v15 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v10 queryParameters:0 appleAccountInformation:informationCopy];
    [v15 setHTTPMethod:@"GET"];
    [v15 setCachePolicy:1];
    v9 = [v15 copy];

    goto LABEL_18;
  }

  v10 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v12 = NSStringFromClass(v14);
    *buf = 138543618;
    v20 = v12;
    v21 = 2082;
    v22 = "_accountIdentifier";
    goto LABEL_14;
  }

LABEL_15:
  v9 = 0;
LABEL_18:

LABEL_19:

  return v9;
}

@end