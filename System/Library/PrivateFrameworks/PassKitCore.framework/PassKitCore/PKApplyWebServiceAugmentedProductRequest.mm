@interface PKApplyWebServiceAugmentedProductRequest
- (PKApplyWebServiceAugmentedProductRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplyWebServiceAugmentedProductRequest

- (PKApplyWebServiceAugmentedProductRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKApplyWebServiceAugmentedProductRequest;
  v5 = [(PKApplyWebServiceRequest *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentConfiguration"];
    installmentConfiguration = v5->_installmentConfiguration;
    v5->_installmentConfiguration = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceAugmentedProductRequest;
  coderCopy = coder;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_installmentConfiguration forKey:{@"installmentConfiguration", v5.receiver, v5.super_class}];
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  v8 = informationCopy;
  if (lCopy)
  {
    if (informationCopy)
    {
      v9 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B3BD8 queryParameters:0 appleAccountInformation:informationCopy];
      [v9 setHTTPMethod:@"POST"];
      [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      _createMutableBody = [(PKApplyWebServiceRequest *)self _createMutableBody];
      v11 = _createMutableBody;
      if (self->_installmentConfiguration)
      {
        [_createMutableBody setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isInstallment"];
        v12 = PKInstallmentRetailChannelToString([(PKPaymentInstallmentConfiguration *)self->_installmentConfiguration retailChannel]);
        [v11 setObject:v12 forKeyedSubscript:@"installmentChannel"];
      }

      else
      {
        [_createMutableBody setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"isInstallment"];
      }

      v18 = [objc_opt_class() _HTTPBodyWithDictionary:v11];
      [v9 setHTTPBody:v18];

      v17 = [v9 copy];
      goto LABEL_13;
    }

    v13 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      v20 = 138543618;
      v21 = v15;
      v22 = 2082;
      v23 = "appleAccountInformation";
      goto LABEL_9;
    }
  }

  else
  {
    v13 = PKLogFacilityTypeGetObject(0xEuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v20 = 138543618;
      v21 = v15;
      v22 = 2082;
      v23 = "url";
LABEL_9:
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v20, 0x16u);
    }
  }

  v17 = 0;
LABEL_13:

  return v17;
}

@end