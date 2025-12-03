@interface PKAccountWebServiceAccountDeleteRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceAccountDeleteRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v20 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  if (!PKRunningInPassd())
  {
    v9 = 0;
    goto LABEL_16;
  }

  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v17 = v11;
    v18 = 2082;
    v19 = "_baseURL";
LABEL_13:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_14;
  }

  if (!informationCopy)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    *buf = 138543618;
    v17 = v11;
    v18 = 2082;
    v19 = "appleAccountInformation";
    goto LABEL_13;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v11 = NSStringFromClass(v13);
      *buf = 138543618;
      v17 = v11;
      v18 = 2082;
      v19 = "_accountIdentifier";
      goto LABEL_13;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v15[0] = @"accounts";
  v15[1] = accountIdentifier;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:informationCopy];

  [v8 setHTTPMethod:@"DELETE"];
  v9 = [v8 copy];
LABEL_15:

LABEL_16:

  return v9;
}

@end