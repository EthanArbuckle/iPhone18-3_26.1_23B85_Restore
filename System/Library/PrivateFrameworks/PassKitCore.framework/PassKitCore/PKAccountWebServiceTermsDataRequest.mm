@interface PKAccountWebServiceTermsDataRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceTermsDataRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "_baseURL";
LABEL_13:
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_14;
  }

  termsIdentifier = self->_termsIdentifier;
  if (!termsIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    *buf = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "_termsIdentifier";
    goto LABEL_13;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v16 = NSStringFromClass(v18);
      *buf = 138543618;
      v22 = v16;
      v23 = 2082;
      v24 = "_accountIdentifier";
      goto LABEL_13;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v20[0] = @"accounts";
  v20[1] = accountIdentifier;
  v20[2] = @"termsData";
  v20[3] = termsIdentifier;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v4];

  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = v10;
  termsDataFormat = self->_termsDataFormat;
  if (termsDataFormat)
  {
    [v10 setObject:termsDataFormat forKey:@"format"];
  }

  v13 = [objc_opt_class() _HTTPBodyWithDictionary:v11];
  [v9 setHTTPBody:v13];

  v14 = [v9 copy];
LABEL_15:

  return v14;
}

@end