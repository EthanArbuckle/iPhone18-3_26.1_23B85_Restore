@interface PKAccountWebServiceVirtualCardLegacyCredentialsRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information;
@end

@implementation PKAccountWebServiceVirtualCardLegacyCredentialsRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v26 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v5 = informationCopy;
  if (!self->_baseURL)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "_baseURL";
LABEL_19:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_20;
  }

  if (!informationCopy)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v16 = objc_opt_class();
    v15 = NSStringFromClass(v16);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "appleAccountInformation";
    goto LABEL_19;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v17 = objc_opt_class();
    v15 = NSStringFromClass(v17);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "_accountIdentifier";
    goto LABEL_19;
  }

  virtualCardIdentifier = self->_virtualCardIdentifier;
  if (!virtualCardIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v18 = objc_opt_class();
    v15 = NSStringFromClass(v18);
    *buf = 138543618;
    v23 = v15;
    v24 = 2082;
    v25 = "_virtualCardIdentifier";
    goto LABEL_19;
  }

  if (!self->_encryptionFields)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v15 = NSStringFromClass(v19);
      *buf = 138543618;
      v23 = v15;
      v24 = 2082;
      v25 = "_encryptionFields";
      goto LABEL_19;
    }

LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  v21[0] = @"accounts";
  v21[1] = accountIdentifier;
  v21[2] = @"virtualCards";
  v21[3] = virtualCardIdentifier;
  v21[4] = @"legacyDeviceCredentials";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:5];
  v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionaryRepresentation = [(PKVirtualCardEncryptionFields *)self->_encryptionFields dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKey:@"encryptionFields"];

  if (dictionary)
  {
    v12 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
    [v9 setHTTPBody:v12];
  }

  v13 = [v9 copy];

LABEL_21:

  return v13;
}

@end