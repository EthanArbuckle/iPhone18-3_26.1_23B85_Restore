@interface PKAccountWebServiceAccountUsersRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceAccountUsersRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v21 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543618;
    v18 = v12;
    v19 = 2082;
    v20 = "_baseURL";
LABEL_11:
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_12;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    *buf = 138543618;
    v18 = v12;
    v19 = 2082;
    v20 = "_accountIdentifier";
    goto LABEL_11;
  }

  if (informationCopy)
  {
    v16[0] = @"accounts";
    v16[1] = accountIdentifier;
    v16[2] = @"users";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];

    [v9 setHTTPMethod:@"GET"];
    v10 = [v9 copy];
    goto LABEL_13;
  }

  v9 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v12 = NSStringFromClass(v14);
    *buf = 138543618;
    v18 = v12;
    v19 = 2082;
    v20 = "appleAccountInformation";
    goto LABEL_11;
  }

LABEL_12:
  v10 = 0;
LABEL_13:

  return v10;
}

@end