@interface PKApplyWebServiceTermsDataRequest
- (PKApplyWebServiceTermsDataRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceTermsDataRequest

- (PKApplyWebServiceTermsDataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKApplyWebServiceTermsDataRequest;
  v5 = [(PKApplyWebServiceRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsDataFormat"];
    termsDataFormat = v5->_termsDataFormat;
    v5->_termsDataFormat = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceTermsDataRequest;
  coderCopy = coder;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_baseURL forKey:@"baseURL"];
  [coderCopy encodeObject:self->_termsIdentifier forKey:@"termsIdentifier"];
  [coderCopy encodeObject:self->_termsDataFormat forKey:@"termsDataFormat"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v27 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v24 = v11;
    v25 = 2082;
    v26 = "_baseURL";
LABEL_12:
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_13;
  }

  termsIdentifier = self->_termsIdentifier;
  if (!termsIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    *buf = 138543618;
    v24 = v11;
    v25 = 2082;
    v26 = "_termsIdentifier";
    goto LABEL_12;
  }

  if (self->_termsDataFormat)
  {
    applicationIdentifier = self->_applicationIdentifier;
    if (applicationIdentifier)
    {
      v22[0] = @"applications";
      v22[1] = applicationIdentifier;
      v22[2] = @"termsData";
      v22[3] = termsIdentifier;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
      v9 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:informationCopy];
    }

    else
    {
      v8 = PKFeatureIdentifierToString(self->_featureIdentifier);
      v15 = self->_baseURL;
      v21[0] = @"applications";
      v21[1] = v8;
      v16 = self->_termsIdentifier;
      v21[2] = @"termsData";
      v21[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
      v9 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:v15 endpointComponents:v17 queryParameters:0 appleAccountInformation:informationCopy];
    }

    [v9 setHTTPMethod:@"POST"];
    [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    _createMutableBody = [(PKApplyWebServiceRequest *)self _createMutableBody];
    [_createMutableBody setObject:self->_termsDataFormat forKey:@"format"];
    v19 = [objc_opt_class() _HTTPBodyWithDictionary:_createMutableBody];
    [v9 setHTTPBody:v19];

    v14 = [v9 copy];
    goto LABEL_16;
  }

  v9 = PKLogFacilityTypeGetObject(0xEuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v11 = NSStringFromClass(v13);
    *buf = 138543618;
    v24 = v11;
    v25 = 2082;
    v26 = "_termsDataFormat";
    goto LABEL_12;
  }

LABEL_13:
  v14 = 0;
LABEL_16:

  return v14;
}

@end