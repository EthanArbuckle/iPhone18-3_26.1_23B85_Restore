@interface PKAccountWebServiceResolveStorefrontCountryMismatchRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceResolveStorefrontCountryMismatchRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v23 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = [(PKAccountWebServiceResolveStorefrontCountryMismatchRequest *)self baseURL];
  if (!baseURL)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "baseURL";
LABEL_14:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_15;
  }

  if (!informationCopy)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "appleAccountInformation";
    goto LABEL_14;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v13 = NSStringFromClass(v15);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_accountIdentifier";
    goto LABEL_14;
  }

  if (self->_countryCode)
  {
    v18[0] = @"accounts";
    v18[1] = accountIdentifier;
    v18[2] = @"resolveCountryMismatch";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:informationCopy];

    [v8 setHTTPMethod:@"POST"];
    [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:self->_countryCode forKeyedSubscript:@"countryCode"];
    v10 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
    [v8 setHTTPBody:v10];

    v11 = [v8 copy];
    goto LABEL_16;
  }

  v8 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_countryCode";
    goto LABEL_14;
  }

LABEL_15:
  v11 = 0;
LABEL_16:

  return v11;
}

@end