@interface PKAccountWebServiceCreatedZoneRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceCreatedZoneRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v22 = v14;
    v23 = 2082;
    v24 = "_baseURL";
LABEL_17:
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_18;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    *buf = 138543618;
    v22 = v14;
    v23 = 2082;
    v24 = "_accountIdentifier";
    goto LABEL_17;
  }

  if (!self->_containerName)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v16 = objc_opt_class();
    v14 = NSStringFromClass(v16);
    *buf = 138543618;
    v22 = v14;
    v23 = 2082;
    v24 = "_containerName";
    goto LABEL_17;
  }

  if (!self->_zoneName)
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v17 = objc_opt_class();
    v14 = NSStringFromClass(v17);
    *buf = 138543618;
    v22 = v14;
    v23 = 2082;
    v24 = "_zoneName";
    goto LABEL_17;
  }

  if (v4)
  {
    v20[0] = @"accounts";
    v20[1] = accountIdentifier;
    v20[2] = @"createdZone";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];

    [v9 setHTTPMethod:@"POST"];
    [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v10 = [MEMORY[0x1E695DF90] dictionary];
    [v10 setObject:self->_containerName forKeyedSubscript:@"containerName"];
    [v10 setObject:self->_zoneName forKeyedSubscript:@"zoneName"];
    v11 = [objc_opt_class() _HTTPBodyWithDictionary:v10];
    [v9 setHTTPBody:v11];

    v12 = [v9 copy];
    goto LABEL_19;
  }

  v9 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v14 = NSStringFromClass(v18);
    *buf = 138543618;
    v22 = v14;
    v23 = 2082;
    v24 = "appleAccountInformation";
    goto LABEL_17;
  }

LABEL_18:
  v12 = 0;
LABEL_19:

  return v12;
}

@end