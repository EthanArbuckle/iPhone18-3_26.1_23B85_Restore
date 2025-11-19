@interface PKApplyWebServiceShownTermsRequest
- (PKApplyWebServiceShownTermsRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceShownTermsRequest

- (PKApplyWebServiceShownTermsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKApplyWebServiceShownTermsRequest;
  v5 = [(PKApplyWebServiceRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsType"];
    termsType = v5->_termsType;
    v5->_termsType = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceShownTermsRequest;
  v4 = a3;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_baseURL forKey:@"baseURL"];
  [v4 encodeObject:self->_termsIdentifier forKey:@"termsIdentifier"];
  [v4 encodeObject:self->_termsType forKey:@"termsType"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_baseURL";
LABEL_14:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_15;
  }

  if (!self->_termsIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_termsIdentifier";
    goto LABEL_14;
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (!applicationIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v15 = objc_opt_class();
    v13 = NSStringFromClass(v15);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_applicationIdentifier";
    goto LABEL_14;
  }

  if (self->_termsType)
  {
    v18[0] = @"applications";
    v18[1] = applicationIdentifier;
    v18[2] = @"shownTerms";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v8 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:v4];

    [v8 setHTTPMethod:@"POST"];
    [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v9 = [(PKApplyWebServiceRequest *)self _createMutableBody];
    [v9 setObject:self->_termsType forKey:@"termsType"];
    [v9 setObject:self->_termsIdentifier forKey:@"termsIdentifier"];
    v10 = [objc_opt_class() _HTTPBodyWithDictionary:v9];
    [v8 setHTTPBody:v10];

    v11 = [v8 copy];
    goto LABEL_16;
  }

  v8 = PKLogFacilityTypeGetObject(0xEuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v13 = NSStringFromClass(v16);
    *buf = 138543618;
    v20 = v13;
    v21 = 2082;
    v22 = "_termsType";
    goto LABEL_14;
  }

LABEL_15:
  v11 = 0;
LABEL_16:

  return v11;
}

@end