@interface PKAccountWebServiceVirtualCardSecurityCodeActivityRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceVirtualCardSecurityCodeActivityRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v35 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    *buf = 138543618;
    v32 = v23;
    v33 = 2082;
    v34 = "_baseURL";
LABEL_29:
    _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_30;
  }

  if (!informationCopy)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    *buf = 138543618;
    v32 = v23;
    v33 = 2082;
    v34 = "appleAccountInformation";
    goto LABEL_29;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v25 = objc_opt_class();
    v23 = NSStringFromClass(v25);
    *buf = 138543618;
    v32 = v23;
    v33 = 2082;
    v34 = "_accountIdentifier";
    goto LABEL_29;
  }

  virtualCardIdentifier = self->_virtualCardIdentifier;
  if (!virtualCardIdentifier)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v26 = objc_opt_class();
    v23 = NSStringFromClass(v26);
    *buf = 138543618;
    v32 = v23;
    v33 = 2082;
    v34 = "_virtualCardIdentifier";
    goto LABEL_29;
  }

  if (!self->_action)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v27 = objc_opt_class();
    v23 = NSStringFromClass(v27);
    *buf = 138543618;
    v32 = v23;
    v33 = 2082;
    v34 = "_action";
    goto LABEL_29;
  }

  if (!self->_timestamp)
  {
    v10 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v23 = NSStringFromClass(v28);
      *buf = 138543618;
      v32 = v23;
      v33 = 2082;
      v34 = "_timestamp";
      goto LABEL_29;
    }

LABEL_30:
    v21 = 0;
    goto LABEL_31;
  }

  v8 = MEMORY[0x1E695DF70];
  v30[0] = @"accounts";
  v30[1] = accountIdentifier;
  v30[2] = @"virtualCards";
  v30[3] = virtualCardIdentifier;
  v30[4] = @"securityCodeActivity";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:5];
  v10 = [v8 arrayWithArray:v9];

  if ([(NSString *)self->_securityCodeIdentifier length])
  {
    [v10 addObject:self->_securityCodeIdentifier];
  }

  baseURL = self->_baseURL;
  v12 = [v10 copy];
  v13 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v12 queryParameters:0 appleAccountInformation:v5];

  [v13 setHTTPMethod:@"POST"];
  [v13 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v15 = dictionary;
  action = self->_action;
  v17 = @"unknown";
  if (action == 1)
  {
    v17 = @"viewed";
  }

  if (action == 2)
  {
    v18 = @"autofilled";
  }

  else
  {
    v18 = v17;
  }

  [dictionary setObject:v18 forKey:@"action"];
  v19 = PKISO8601DateStringFromDate(self->_timestamp);
  [v15 setObject:v19 forKey:@"timestamp"];

  if (v15)
  {
    v20 = [objc_opt_class() _HTTPBodyWithDictionary:v15];
    [v13 setHTTPBody:v20];
  }

  v21 = [v13 copy];

LABEL_31:

  return v21;
}

@end