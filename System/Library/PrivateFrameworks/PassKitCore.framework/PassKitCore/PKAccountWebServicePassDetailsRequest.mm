@interface PKAccountWebServicePassDetailsRequest
- (id)_urlRequestWithAppleAccountInformation:(id)information deviceIdentifier:(id)identifier;
@end

@implementation PKAccountWebServicePassDetailsRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information deviceIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  identifierCopy = identifier;
  v8 = identifierCopy;
  baseURL = self->_baseURL;
  if (!baseURL)
  {
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    *buf = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "_baseURL";
LABEL_16:
    _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_17;
  }

  if (!informationCopy)
  {
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    *buf = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "appleAccountInformation";
    goto LABEL_16;
  }

  accountIdentifier = self->_accountIdentifier;
  if (!accountIdentifier)
  {
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v20 = objc_opt_class();
    v18 = NSStringFromClass(v20);
    *buf = 138543618;
    v25 = v18;
    v26 = 2082;
    v27 = "_accountIdentifier";
    goto LABEL_16;
  }

  if (!identifierCopy)
  {
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v18 = NSStringFromClass(v21);
      *buf = 138543618;
      v25 = v18;
      v26 = 2082;
      v27 = "deviceIdentifier";
      goto LABEL_16;
    }

LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v23[0] = @"accounts";
  v23[1] = accountIdentifier;
  v23[2] = @"devices";
  v23[3] = identifierCopy;
  v23[4] = @"pass";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];
  v12 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:v11 queryParameters:0 appleAccountInformation:informationCopy];

  [v12 setHTTPMethod:@"POST"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionaryRepresentation = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceMetadata"];
  }

  [dictionary setObject:self->_sharingInstanceIdentifier forKeyedSubscript:@"sharingInstanceIdentifier"];
  v15 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v12 setHTTPBody:v15];

  v16 = [v12 copy];
LABEL_18:

  return v16;
}

@end