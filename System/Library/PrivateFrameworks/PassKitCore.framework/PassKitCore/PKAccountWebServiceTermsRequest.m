@interface PKAccountWebServiceTermsRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceTermsRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!PKRunningInPassd())
  {
    v12 = 0;
    goto LABEL_19;
  }

  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v21 = v14;
    v22 = 2082;
    v23 = "_baseURL";
LABEL_16:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_17;
  }

  if (!v4)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    *buf = 138543618;
    v21 = v14;
    v22 = 2082;
    v23 = "appleAccountInformation";
    goto LABEL_16;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v16 = objc_opt_class();
    v14 = NSStringFromClass(v16);
    *buf = 138543618;
    v21 = v14;
    v22 = 2082;
    v23 = "_accountIdentifier";
    goto LABEL_16;
  }

  if (!self->_termsIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v14 = NSStringFromClass(v17);
      *buf = 138543618;
      v21 = v14;
      v22 = 2082;
      v23 = "_termsIdentifier";
      goto LABEL_16;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v19[0] = @"accounts";
  v19[1] = accountIdentifier;
  v19[2] = @"terms";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:v4];

  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  [v9 setObject:self->_termsIdentifier forKey:@"termsIdentifier"];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_termsAccepted];
  [v9 setObject:v10 forKey:@"termsAccepted"];

  v11 = [objc_opt_class() _HTTPBodyWithDictionary:v9];
  [v8 setHTTPBody:v11];

  v12 = [v8 copy];
LABEL_18:

LABEL_19:

  return v12;
}

@end