@interface PKAccountWebServiceCreateVirtualCardRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceCreateVirtualCardRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_baseURL)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "_baseURL";
LABEL_23:
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_24;
  }

  if (!v4)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v18 = objc_opt_class();
    v17 = NSStringFromClass(v18);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "appleAccountInformation";
    goto LABEL_23;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v19 = objc_opt_class();
    v17 = NSStringFromClass(v19);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "_accountIdentifier";
    goto LABEL_23;
  }

  if (!self->_type)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v20 = objc_opt_class();
    v17 = NSStringFromClass(v20);
    *buf = 138543618;
    v25 = v17;
    v26 = 2082;
    v27 = "_type";
    goto LABEL_23;
  }

  if (!self->_encryptionFields)
  {
    v7 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v17 = NSStringFromClass(v21);
      *buf = 138543618;
      v25 = v17;
      v26 = 2082;
      v27 = "_encryptionFields";
      goto LABEL_23;
    }

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  v23[0] = @"accounts";
  v23[1] = accountIdentifier;
  v23[2] = @"virtualCards";
  v23[3] = @"create";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  v8 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v7 queryParameters:0 appleAccountInformation:v5];
  [v8 setHTTPMethod:@"POST"];
  [v8 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  type = self->_type;
  if (type)
  {
    v11 = PKAccountVirtualCardTypeToString(type);
    [v9 setObject:v11 forKey:@"type"];
  }

  encryptionFields = self->_encryptionFields;
  if (encryptionFields)
  {
    v13 = [(PKVirtualCardEncryptionFields *)encryptionFields dictionaryRepresentation];
    [v9 setObject:v13 forKey:@"encryptionFields"];
  }

  if (v9)
  {
    v14 = [objc_opt_class() _HTTPBodyWithDictionary:v9];
    [v8 setHTTPBody:v14];
  }

  v15 = [v8 copy];

LABEL_25:

  return v15;
}

@end