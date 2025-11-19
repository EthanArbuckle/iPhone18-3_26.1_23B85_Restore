@interface PKAccountWebServiceInstallmentBindRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceInstallmentBindRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_baseURL)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138543618;
    v21 = v11;
    v22 = 2082;
    v23 = "_baseURL";
LABEL_19:
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_20;
  }

  if (!v4)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    *buf = 138543618;
    v21 = v11;
    v22 = 2082;
    v23 = "appleAccountInformation";
    goto LABEL_19;
  }

  if (!self->_accountIdentifier && !self->_applicationIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v11 = NSStringFromClass(v15);
      *buf = 138543618;
      v21 = v11;
      v22 = 2082;
      v23 = "(_accountIdentifier || _applicationIdentifier)";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (!self->_bindingAmount)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v13 = objc_opt_class();
    v11 = NSStringFromClass(v13);
    *buf = 138543618;
    v21 = v11;
    v22 = 2082;
    v23 = "_bindingAmount";
    goto LABEL_19;
  }

  if (!self->_merchantIdentifier)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v11 = NSStringFromClass(v14);
      *buf = 138543618;
      v21 = v11;
      v22 = 2082;
      v23 = "_merchantIdentifier";
      goto LABEL_19;
    }

LABEL_20:
    v16 = 0;
    goto LABEL_21;
  }

  v19[0] = @"accounts";
  v19[1] = @"installments";
  v19[2] = @"bind";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v7 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v6 queryParameters:0 appleAccountInformation:v5];
  [v7 setHTTPMethod:@"POST"];
  [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [(NSDecimalNumber *)self->_bindingAmount stringValue];
  [v8 setObject:v9 forKeyedSubscript:@"bindingAmount"];

  [v8 setObject:self->_merchantIdentifier forKeyedSubscript:@"merchantIdentifier"];
  if (self->_accountIdentifier || self->_applicationIdentifier)
  {
    [v8 setObject:? forKeyedSubscript:?];
  }

  v18 = [objc_opt_class() _HTTPBodyWithDictionary:v8];
  [v7 setHTTPBody:v18];

  v16 = [v7 copy];
LABEL_21:

  return v16;
}

@end