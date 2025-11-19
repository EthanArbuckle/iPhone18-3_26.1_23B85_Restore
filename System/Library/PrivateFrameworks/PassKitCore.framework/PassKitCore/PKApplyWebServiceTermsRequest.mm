@interface PKApplyWebServiceTermsRequest
- (PKApplyWebServiceTermsRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceTermsRequest

- (PKApplyWebServiceTermsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKApplyWebServiceTermsRequest;
  v5 = [(PKApplyWebServiceRequest *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v5->_termsAccepted = [v4 decodeBoolForKey:@"termsAccepted"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationTermsIdentifier"];
    applicationTermsIdentifier = v5->_applicationTermsIdentifier;
    v5->_applicationTermsIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offerTermsIdentifier"];
    offerTermsIdentifier = v5->_offerTermsIdentifier;
    v5->_offerTermsIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pathTermsIdentifier"];
    pathTermsIdentifier = v5->_pathTermsIdentifier;
    v5->_pathTermsIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pathIdentifier"];
    pathIdentifier = v5->_pathIdentifier;
    v5->_pathIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceMetadata"];
    deviceMetadata = v5->_deviceMetadata;
    v5->_deviceMetadata = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentConfiguration"];
    installmentConfiguration = v5->_installmentConfiguration;
    v5->_installmentConfiguration = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationContext"];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceTermsRequest;
  v4 = a3;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_applicationIdentifier forKey:{@"applicationIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_termsAccepted forKey:@"termsAccepted"];
  [v4 encodeObject:self->_baseURL forKey:@"baseURL"];
  [v4 encodeObject:self->_applicationTermsIdentifier forKey:@"applicationTermsIdentifier"];
  [v4 encodeObject:self->_offerTermsIdentifier forKey:@"offerTermsIdentifier"];
  [v4 encodeObject:self->_pathTermsIdentifier forKey:@"pathTermsIdentifier"];
  [v4 encodeObject:self->_pathIdentifier forKey:@"pathIdentifier"];
  [v4 encodeObject:self->_deviceMetadata forKey:@"deviceMetadata"];
  [v4 encodeObject:self->_installmentConfiguration forKey:@"installmentConfiguration"];
  [v4 encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [v4 encodeObject:self->_authenticationContext forKey:@"authenticationContext"];
}

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138543618;
    v33 = v13;
    v34 = 2082;
    v35 = "_baseURL";
LABEL_12:
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_13;
  }

  if (!v4)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    v14 = objc_opt_class();
    v13 = NSStringFromClass(v14);
    *buf = 138543618;
    v33 = v13;
    v34 = 2082;
    v35 = "appleAccountInformation";
    goto LABEL_12;
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (!applicationIdentifier)
  {
    v9 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v13 = NSStringFromClass(v15);
      *buf = 138543618;
      v33 = v13;
      v34 = 2082;
      v35 = "_applicationIdentifier";
      goto LABEL_12;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_32;
  }

  v31[0] = @"applications";
  v31[1] = applicationIdentifier;
  v31[2] = @"terms";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  v9 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];

  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = [(PKApplyWebServiceRequest *)self _createMutableBody];
  v11 = v10;
  if (self->_applicationTermsIdentifier || self->_offerTermsIdentifier)
  {
    [v10 setObject:? forKey:?];
  }

  pathTermsIdentifier = self->_pathTermsIdentifier;
  if (pathTermsIdentifier)
  {
    [v11 setObject:pathTermsIdentifier forKey:@"pathTermsIdentifier"];
  }

  pathIdentifier = self->_pathIdentifier;
  if (pathIdentifier)
  {
    [v11 setObject:pathIdentifier forKey:@"pathIdentifier"];
  }

  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_termsAccepted];
  [v11 setObject:v19 forKey:@"termsAccepted"];

  v20 = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (v20)
  {
    [v11 setObject:v20 forKey:@"deviceMetadata"];
  }

  installmentConfiguration = self->_installmentConfiguration;
  if (installmentConfiguration)
  {
    [(PKPaymentInstallmentConfiguration *)installmentConfiguration encodeToBodyDictionary:v11];
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [v11 setObject:odiAssessment forKey:@"odiAssessment"];
  }

  authenticationContext = self->_authenticationContext;
  if (!authenticationContext)
  {
    goto LABEL_31;
  }

  v24 = [(PKApplyWebServiceRequestAuthenticationContext *)authenticationContext certificates];
  if (![v24 count])
  {
    goto LABEL_30;
  }

  v25 = [(PKApplyWebServiceRequestAuthenticationContext *)self->_authenticationContext signature];

  if (v25)
  {
    v26 = [(PKApplyWebServiceRequestAuthenticationContext *)self->_authenticationContext certificates];
    v24 = [v26 pk_arrayByApplyingBlock:&__block_literal_global_569];

    [v11 setObject:v24 forKeyedSubscript:@"certificates"];
    v27 = [(PKApplyWebServiceRequestAuthenticationContext *)self->_authenticationContext signature];
    v28 = [v27 base64EncodedStringWithOptions:0];
    [v11 setObject:v28 forKeyedSubscript:@"signature"];

LABEL_30:
  }

LABEL_31:
  v29 = [objc_opt_class() _HTTPBodyWithDictionary:v11];
  [v9 setHTTPBody:v29];

  v16 = [v9 copy];
LABEL_32:

  return v16;
}

@end