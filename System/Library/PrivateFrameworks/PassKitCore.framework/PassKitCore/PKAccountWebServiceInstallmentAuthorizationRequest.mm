@interface PKAccountWebServiceInstallmentAuthorizationRequest
- (PKAccountWebServiceInstallmentAuthorizationRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (id)endpointComponents;
- (id)manifestHashWithReferenceIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountWebServiceInstallmentAuthorizationRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v32 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  if (!informationCopy)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v28 = 138543618;
      v29 = v17;
      v30 = 2082;
      v31 = "appleAccountInformation";
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v28, 0x16u);
    }

    goto LABEL_25;
  }

  baseURL = [(PKAccountWebServiceInstallmentAuthorizationRequest *)self baseURL];
  if (!baseURL)
  {
    v18 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v28 = 138543618;
      v29 = v20;
      v30 = 2082;
      v31 = "baseURL";
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v28, 0x16u);
    }

    v6 = 0;
    goto LABEL_25;
  }

  v6 = baseURL;
  if (!self->_accountIdentifier)
  {
    v21 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v28 = 138543618;
    v29 = v23;
    v30 = 2082;
    v31 = "_accountIdentifier";
LABEL_23:
    _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v28, 0x16u);

    goto LABEL_24;
  }

  if (!self->_bindToken)
  {
    v21 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    v28 = 138543618;
    v29 = v23;
    v30 = 2082;
    v31 = "_bindToken";
    goto LABEL_23;
  }

  if (!self->_authorizationAmount)
  {
    v21 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v25 = objc_opt_class();
    v23 = NSStringFromClass(v25);
    v28 = 138543618;
    v29 = v23;
    v30 = 2082;
    v31 = "_authorizationAmount";
    goto LABEL_23;
  }

  if (!self->_installmentGroupIdentifier)
  {
    v21 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v23 = NSStringFromClass(v26);
      v28 = 138543618;
      v29 = v23;
      v30 = 2082;
      v31 = "_installmentGroupIdentifier";
      goto LABEL_23;
    }

LABEL_24:

LABEL_25:
    v15 = 0;
    goto LABEL_26;
  }

  endpointComponents = [(PKAccountWebServiceInstallmentAuthorizationRequest *)self endpointComponents];
  v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:endpointComponents queryParameters:0 appleAccountInformation:informationCopy];

  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 setObject:self->_bindToken forKeyedSubscript:@"bindToken"];
  stringValue = [(NSDecimalNumber *)self->_authorizationAmount stringValue];
  [v9 setObject:stringValue forKeyedSubscript:@"authorizationAmount"];

  [v9 setObject:self->_installmentGroupIdentifier forKeyedSubscript:@"installmentGroupIdentifier"];
  shippingAddress = self->_shippingAddress;
  if (shippingAddress)
  {
    webServiceDictionaryRepresentation = [(CNPostalAddress *)shippingAddress webServiceDictionaryRepresentation];
    [v9 setObject:webServiceDictionaryRepresentation forKeyedSubscript:@"shippingAddress"];
  }

  hexEncoding = [(NSData *)self->_publicKeyHash hexEncoding];
  [v9 setObject:hexEncoding forKeyedSubscript:@"publicKeyHash"];

  v14 = [objc_opt_class() _HTTPBodyWithDictionary:v9];
  [v8 setHTTPBody:v14];

  v15 = [v8 copy];
LABEL_26:

  return v15;
}

- (id)endpointComponents
{
  v5[4] = *MEMORY[0x1E69E9840];
  accountIdentifier = self->_accountIdentifier;
  v5[0] = @"accounts";
  v5[1] = accountIdentifier;
  v5[2] = @"installments";
  v5[3] = @"authorize";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];

  return v3;
}

- (id)manifestHashWithReferenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([(NSString *)self->_bindToken length])
  {
    [v5 appendString:self->_bindToken];
  }

  authorizationAmount = self->_authorizationAmount;
  if (authorizationAmount)
  {
    stringValue = [(NSDecimalNumber *)authorizationAmount stringValue];
    [v5 appendString:stringValue];
  }

  if ([(NSString *)self->_installmentGroupIdentifier length])
  {
    [v5 appendString:self->_installmentGroupIdentifier];
  }

  if ([identifierCopy length])
  {
    [v5 appendString:identifierCopy];
  }

  v8 = [v5 dataUsingEncoding:4];
  sHA256Hash = [v8 SHA256Hash];

  return sHA256Hash;
}

- (PKAccountWebServiceInstallmentAuthorizationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKAccountWebServiceInstallmentAuthorizationRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    [(PKAccountWebServiceInstallmentAuthorizationRequest *)v5 setBaseURL:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashResponse"];
    [(PKAccountWebServiceInstallmentAuthorizationRequest *)v5 setHashResponse:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bindToken"];
    bindToken = v5->_bindToken;
    v5->_bindToken = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorizationAmount"];
    authorizationAmount = v5->_authorizationAmount;
    v5->_authorizationAmount = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentGroupIdentifier"];
    installmentGroupIdentifier = v5->_installmentGroupIdentifier;
    v5->_installmentGroupIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shippingAddress"];
    shippingAddress = v5->_shippingAddress;
    v5->_shippingAddress = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKAccountWebServiceInstallmentAuthorizationRequest;
  coderCopy = coder;
  [(PKOverlayableWebServiceRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(PKAccountWebServiceInstallmentAuthorizationRequest *)self baseURL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"baseURL"];

  hashResponse = [(PKAccountWebServiceInstallmentAuthorizationRequest *)self hashResponse];
  [coderCopy encodeObject:hashResponse forKey:@"hashResponse"];

  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_bindToken forKey:@"bindToken"];
  [coderCopy encodeObject:self->_authorizationAmount forKey:@"authorizationAmount"];
  [coderCopy encodeObject:self->_installmentGroupIdentifier forKey:@"installmentGroupIdentifier"];
  [coderCopy encodeObject:self->_shippingAddress forKey:@"shippingAddress"];
}

@end