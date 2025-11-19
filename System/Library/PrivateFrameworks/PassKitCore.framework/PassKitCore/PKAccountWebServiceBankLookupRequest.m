@interface PKAccountWebServiceBankLookupRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceBankLookupRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v23 = v14;
    v24 = 2082;
    v25 = "_baseURL";
LABEL_14:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_15;
  }

  if (!v4)
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    *buf = 138543618;
    v23 = v14;
    v24 = 2082;
    v25 = "appleAccountInformation";
    goto LABEL_14;
  }

  if (!self->_countryCode)
  {
    v11 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v16 = objc_opt_class();
    v14 = NSStringFromClass(v16);
    *buf = 138543618;
    v23 = v14;
    v24 = 2082;
    v25 = "_countryCode";
    goto LABEL_14;
  }

  if (self->_query)
  {
    v21 = @"bankLookup";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    countryCode = self->_countryCode;
    v19[0] = @"countryCode";
    v19[1] = @"query";
    query = self->_query;
    v20[0] = countryCode;
    v20[1] = query;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v11 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v7 queryParameters:v10 appleAccountInformation:v5];

    [v11 setHTTPMethod:@"GET"];
    v12 = [v11 copy];
    goto LABEL_16;
  }

  v11 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v14 = NSStringFromClass(v17);
    *buf = 138543618;
    v23 = v14;
    v24 = 2082;
    v25 = "_query";
    goto LABEL_14;
  }

LABEL_15:
  v12 = 0;
LABEL_16:

  return v12;
}

@end