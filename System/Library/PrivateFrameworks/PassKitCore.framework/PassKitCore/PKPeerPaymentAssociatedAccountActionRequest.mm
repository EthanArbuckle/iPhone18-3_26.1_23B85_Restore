@interface PKPeerPaymentAssociatedAccountActionRequest
- (PKPeerPaymentAssociatedAccountActionRequest)initWithAssociatedAccountIdentifier:(id)identifier;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPeerPaymentAssociatedAccountActionRequest

- (PKPeerPaymentAssociatedAccountActionRequest)initWithAssociatedAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentAssociatedAccountActionRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_associatedAccountIdentifier, identifier);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  v8 = informationCopy;
  if (!lCopy)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138543618;
    v27 = v19;
    v28 = 2082;
    v29 = "url";
LABEL_21:
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_22;
  }

  if (!informationCopy)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v20 = objc_opt_class();
    v19 = NSStringFromClass(v20);
    *buf = 138543618;
    v27 = v19;
    v28 = 2082;
    v29 = "appleAccountInformation";
    goto LABEL_21;
  }

  associatedAccountIdentifier = self->_associatedAccountIdentifier;
  if (!associatedAccountIdentifier)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v21 = objc_opt_class();
    v19 = NSStringFromClass(v21);
    *buf = 138543618;
    v27 = v19;
    v28 = 2082;
    v29 = "_associatedAccountIdentifier";
    goto LABEL_21;
  }

  if (!self->_featureIdentifier)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v22 = objc_opt_class();
    v19 = NSStringFromClass(v22);
    *buf = 138543618;
    v27 = v19;
    v28 = 2082;
    v29 = "_featureIdentifier";
    goto LABEL_21;
  }

  if (!self->_value)
  {
    v11 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v19 = NSStringFromClass(v23);
      *buf = 138543618;
      v27 = v19;
      v28 = 2082;
      v29 = "_value";
      goto LABEL_21;
    }

LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v25[0] = @"account";
  v25[1] = @"associatedAccountAction";
  v25[2] = associatedAccountIdentifier;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v11 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v10 queryParameters:0 appleAccountInformation:v8];

  [v11 setHTTPMethod:@"POST"];
  [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = dictionary;
  featureIdentifier = self->_featureIdentifier;
  if (featureIdentifier)
  {
    [dictionary setObject:featureIdentifier forKey:@"featureIdentifier"];
  }

  value = self->_value;
  if (value)
  {
    [v13 setObject:value forKey:@"value"];
  }

  v16 = [objc_opt_class() _HTTPBodyWithDictionary:v13];
  [v11 setHTTPBody:v16];

  v17 = [v11 copy];
LABEL_23:

  return v17;
}

@end