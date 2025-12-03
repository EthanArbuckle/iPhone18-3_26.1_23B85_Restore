@interface PKApplyWebServiceVerificationResendRequest
- (PKApplyWebServiceVerificationResendRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceVerificationResendRequest

- (PKApplyWebServiceVerificationResendRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKApplyWebServiceVerificationResendRequest;
  v5 = [(PKApplyWebServiceRequest *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v5->_verificationType = [coderCopy decodeIntegerForKey:@"verificationType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceVerificationResendRequest;
  coderCopy = coder;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_baseURL forKey:@"baseURL"];
  [coderCopy encodeInteger:self->_verificationType forKey:@"verificationType"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v22 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  if (informationCopy)
  {
    if (self->_verificationType)
    {
      baseURL = self->_baseURL;
      applicationIdentifier = self->_applicationIdentifier;
      v17[0] = @"applications";
      v17[1] = applicationIdentifier;
      v17[2] = @"verification";
      v17[3] = @"resend";
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
      v8 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:informationCopy];

      [v8 setHTTPMethod:@"POST"];
      [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      _createMutableBody = [(PKApplyWebServiceRequest *)self _createMutableBody];
      v10 = PKApplyVerificationTypeToString(self->_verificationType);
      [_createMutableBody setObject:v10 forKey:@"verificationType"];

      v11 = [objc_opt_class() _HTTPBodyWithDictionary:_createMutableBody];
      [v8 setHTTPBody:v11];

      v12 = [v8 copy];
      goto LABEL_10;
    }

    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v14 = NSStringFromClass(v15);
      *buf = 138543618;
      v19 = v14;
      v20 = 2082;
      v21 = "_verificationType";
      goto LABEL_8;
    }
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543618;
      v19 = v14;
      v20 = 2082;
      v21 = "appleAccountInformation";
LABEL_8:
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

@end