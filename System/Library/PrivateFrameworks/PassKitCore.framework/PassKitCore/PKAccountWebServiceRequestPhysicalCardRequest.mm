@interface PKAccountWebServiceRequestPhysicalCardRequest
- (PKAccountWebServiceRequestPhysicalCardRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (id)endpointComponents;
- (id)manifestHashWithReferenceIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountWebServiceRequestPhysicalCardRequest

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v28 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = [(PKAccountWebServiceRequestPhysicalCardRequest *)self baseURL];
  if (!baseURL)
  {
    v18 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v24 = 138543618;
    v25 = v20;
    v26 = 2082;
    v27 = "baseURL";
LABEL_17:
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v24, 0x16u);

    goto LABEL_18;
  }

  if (!self->_accountIdentifier)
  {
    v18 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v24 = 138543618;
    v25 = v20;
    v26 = 2082;
    v27 = "_accountIdentifier";
    goto LABEL_17;
  }

  if (!self->_order)
  {
    v18 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v20 = NSStringFromClass(v22);
      v24 = 138543618;
      v25 = v20;
      v26 = 2082;
      v27 = "_order";
      goto LABEL_17;
    }

LABEL_18:

    v17 = 0;
    goto LABEL_19;
  }

  endpointComponents = [(PKAccountWebServiceRequestPhysicalCardRequest *)self endpointComponents];
  v7 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:endpointComponents queryParameters:0 appleAccountInformation:informationCopy];

  [v7 setHTTPMethod:@"POST"];
  [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  artworkIdentifier = [(PKPhysicalCardOrder *)self->_order artworkIdentifier];

  if (artworkIdentifier)
  {
    artworkIdentifier2 = [(PKPhysicalCardOrder *)self->_order artworkIdentifier];
    [dictionary setObject:artworkIdentifier2 forKeyedSubscript:@"artworkIdentifier"];
  }

  nameOnCard = [(PKPhysicalCardOrder *)self->_order nameOnCard];

  if (nameOnCard)
  {
    nameOnCard2 = [(PKPhysicalCardOrder *)self->_order nameOnCard];
    [dictionary setObject:nameOnCard2 forKeyedSubscript:@"name"];
  }

  v13 = PKStringFromPhysicalCardOrderReason([(PKPhysicalCardOrder *)self->_order reason]);
  [dictionary setObject:v13 forKeyedSubscript:@"reason"];

  [dictionary setObject:self->_accountUserAltDSID forKeyedSubscript:@"accountUserAltDSID"];
  dictionaryRepresentation = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceMetadata"];
  }

  hexEncoding = [(NSData *)self->_publicKeyHash hexEncoding];
  [dictionary setObject:hexEncoding forKeyedSubscript:@"publicKeyHash"];

  v16 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v7 setHTTPBody:v16];

  v17 = [v7 copy];
LABEL_19:

  return v17;
}

- (id)endpointComponents
{
  v6[4] = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_accountIdentifier length];
  if (v3)
  {
    accountIdentifier = self->_accountIdentifier;
    v6[0] = @"accounts";
    v6[1] = accountIdentifier;
    v6[2] = @"physicalCard";
    v6[3] = @"request";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
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

  artworkIdentifier = [(PKPhysicalCardOrder *)self->_order artworkIdentifier];
  if ([artworkIdentifier length])
  {
    [string appendString:artworkIdentifier];
  }

  v7 = PKStringFromPhysicalCardOrderReason([(PKPhysicalCardOrder *)self->_order reason]);
  if ([v7 length])
  {
    [string appendString:v7];
  }

  if (identifierCopy)
  {
    [string appendString:identifierCopy];
  }

  v8 = [string dataUsingEncoding:4];
  sHA256Hash = [v8 SHA256Hash];

  return sHA256Hash;
}

- (PKAccountWebServiceRequestPhysicalCardRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKAccountWebServiceRequestPhysicalCardRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    [(PKAccountWebServiceRequestPhysicalCardRequest *)v5 setBaseURL:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hashResponse"];
    [(PKAccountWebServiceRequestPhysicalCardRequest *)v5 setHashResponse:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"order"];
    order = v5->_order;
    v5->_order = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKAccountWebServiceRequestPhysicalCardRequest;
  coderCopy = coder;
  [(PKOverlayableWebServiceRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(PKAccountWebServiceRequestPhysicalCardRequest *)self baseURL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"baseURL"];

  hashResponse = [(PKAccountWebServiceRequestPhysicalCardRequest *)self hashResponse];
  [coderCopy encodeObject:hashResponse forKey:@"hashResponse"];

  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_accountUserAltDSID forKey:@"accountUserAltDSID"];
  [coderCopy encodeObject:self->_order forKey:@"order"];
}

@end