@interface PKApplyWebServiceApplicationDeleteRequest
- (PKApplyWebServiceApplicationDeleteRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceApplicationDeleteRequest

- (PKApplyWebServiceApplicationDeleteRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKApplyWebServiceApplicationDeleteRequest;
  v5 = [(PKApplyWebServiceRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceApplicationDeleteRequest;
  coderCopy = coder;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_baseURL forKey:@"baseURL"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v21 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
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

  if (!informationCopy)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    *buf = 138543618;
    v18 = v12;
    v19 = 2082;
    v20 = "appleAccountInformation";
    goto LABEL_11;
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier)
  {
    v16[0] = @"applications";
    v16[1] = applicationIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v9 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];

    [v9 setHTTPMethod:@"DELETE"];
    v10 = [v9 copy];
    goto LABEL_13;
  }

  v9 = PKLogFacilityTypeGetObject(0xEuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v12 = NSStringFromClass(v14);
    *buf = 138543618;
    v18 = v12;
    v19 = 2082;
    v20 = "_applicationIdentifier";
    goto LABEL_11;
  }

LABEL_12:
  v10 = 0;
LABEL_13:

  return v10;
}

@end