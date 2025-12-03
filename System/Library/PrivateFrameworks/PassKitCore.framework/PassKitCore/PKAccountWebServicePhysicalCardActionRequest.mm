@interface PKAccountWebServicePhysicalCardActionRequest
- (PKAccountWebServicePhysicalCardActionRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (id)endpointComponents;
- (id)manifestHashWithReferenceIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountWebServicePhysicalCardActionRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v25 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = [(PKAccountWebServicePhysicalCardActionRequest *)self baseURL];
  if (!baseURL)
  {
    v14 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v21 = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "baseURL";
LABEL_16:
    _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v21, 0x16u);

    goto LABEL_17;
  }

  if (!self->_action)
  {
    v14 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v21 = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "_action";
    goto LABEL_16;
  }

  if (!self->_accountIdentifier)
  {
    v14 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v18 = objc_opt_class();
    v16 = NSStringFromClass(v18);
    v21 = 138543618;
    v22 = v16;
    v23 = 2082;
    v24 = "_accountIdentifier";
    goto LABEL_16;
  }

  if (!self->_physicalCardIdentifier)
  {
    v14 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v16 = NSStringFromClass(v19);
      v21 = 138543618;
      v22 = v16;
      v23 = 2082;
      v24 = "_physicalCardIdentifier";
      goto LABEL_16;
    }

LABEL_17:

    v13 = 0;
    goto LABEL_18;
  }

  endpointComponents = [(PKAccountWebServicePhysicalCardActionRequest *)self endpointComponents];
  v7 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:endpointComponents queryParameters:0 appleAccountInformation:informationCopy];

  [v7 setHTTPMethod:@"POST"];
  [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  jsonRepresentation = [(PKPhysicalCardAction *)self->_action jsonRepresentation];
  [dictionary addEntriesFromDictionary:jsonRepresentation];

  [dictionary setObject:self->_accountUserAltDSID forKeyedSubscript:@"accountUserAltDSID"];
  dictionaryRepresentation = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceMetadata"];
  }

  hexEncoding = [(NSData *)self->_publicKeyHash hexEncoding];
  [dictionary setObject:hexEncoding forKeyedSubscript:@"publicKeyHash"];

  v12 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v7 setHTTPBody:v12];

  v13 = [v7 copy];
LABEL_18:

  return v13;
}

- (id)endpointComponents
{
  v7[4] = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_accountIdentifier length];
  if (v3)
  {
    v3 = [(NSString *)self->_physicalCardIdentifier length];
    if (v3)
    {
      accountIdentifier = self->_accountIdentifier;
      v7[0] = @"accounts";
      v7[1] = accountIdentifier;
      physicalCardIdentifier = self->_physicalCardIdentifier;
      v7[2] = @"physicalCard";
      v7[3] = physicalCardIdentifier;
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
    }
  }

  return v3;
}

- (id)manifestHashWithReferenceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  string = [MEMORY[0x1E696AD60] string];
  if ([(NSString *)self->_accountIdentifier length])
  {
    [string appendString:self->_accountIdentifier];
  }

  if ([(NSString *)self->_physicalCardIdentifier length])
  {
    [string appendString:self->_physicalCardIdentifier];
  }

  actionType = [(PKPhysicalCardAction *)self->_action actionType];
  v7 = PKStringFromPhysicalCardActionType(actionType);
  if ([v7 length])
  {
    [string appendString:v7];
  }

  if (actionType == 5)
  {
    v8 = PKStringFromPhysicalCardOrderReason([(PKPhysicalCardAction *)self->_action reason]);
    if ([v8 length])
    {
      [string appendString:v8];
    }

    priceOption = [(PKPhysicalCardAction *)self->_action priceOption];
    v10 = priceOption;
    if (priceOption)
    {
      v11 = PKStringFromPhysicalCardOrderReason([priceOption reason]);
      amount = [v10 amount];
      v12Amount = [amount amount];
      stringValue = [v12Amount stringValue];

      amount2 = [v10 amount];
      currency = [amount2 currency];

      if ([v11 length])
      {
        [string appendString:v11];
      }

      if ([stringValue length])
      {
        [string appendString:stringValue];
      }

      if ([currency length])
      {
        [string appendString:currency];
      }
    }
  }

  if (identifierCopy)
  {
    [string appendString:identifierCopy];
  }

  v17 = [string dataUsingEncoding:4];
  sHA256Hash = [v17 SHA256Hash];

  return sHA256Hash;
}

- (PKAccountWebServicePhysicalCardActionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKAccountWebServicePhysicalCardActionRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    [(PKAccountWebServicePhysicalCardActionRequest *)v5 setBaseURL:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashResponse"];
    [(PKAccountWebServicePhysicalCardActionRequest *)v5 setHashResponse:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"physicalCardIdentifier"];
    physicalCardIdentifier = v5->_physicalCardIdentifier;
    v5->_physicalCardIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    action = v5->_action;
    v5->_action = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKAccountWebServicePhysicalCardActionRequest;
  coderCopy = coder;
  [(PKOverlayableWebServiceRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(PKAccountWebServicePhysicalCardActionRequest *)self baseURL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"baseURL"];

  hashResponse = [(PKAccountWebServicePhysicalCardActionRequest *)self hashResponse];
  [coderCopy encodeObject:hashResponse forKey:@"hashResponse"];

  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_accountUserAltDSID forKey:@"accountUserAltDSID"];
  [coderCopy encodeObject:self->_physicalCardIdentifier forKey:@"physicalCardIdentifier"];
  [coderCopy encodeObject:self->_action forKey:@"action"];
}

@end