@interface PKApplyWebServiceAugmentedProductRequest
- (PKApplyWebServiceAugmentedProductRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplyWebServiceAugmentedProductRequest

- (PKApplyWebServiceAugmentedProductRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKApplyWebServiceAugmentedProductRequest;
  v5 = [(PKApplyWebServiceRequest *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentConfiguration"];
    installmentConfiguration = v5->_installmentConfiguration;
    v5->_installmentConfiguration = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKApplyWebServiceAugmentedProductRequest;
  v4 = a3;
  [(PKApplyWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_installmentConfiguration forKey:{@"installmentConfiguration", v5.receiver, v5.super_class}];
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [(PKApplyWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:&unk_1F23B3BD8 queryParameters:0 appleAccountInformation:v7];
      [v9 setHTTPMethod:@"POST"];
      [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
      v10 = [(PKApplyWebServiceRequest *)self _createMutableBody];
      v11 = v10;
      if (self->_installmentConfiguration)
      {
        [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isInstallment"];
        v12 = PKInstallmentRetailChannelToString([(PKPaymentInstallmentConfiguration *)self->_installmentConfiguration retailChannel]);
        [v11 setObject:v12 forKeyedSubscript:@"installmentChannel"];
      }

      else
      {
        [v10 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"isInstallment"];
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