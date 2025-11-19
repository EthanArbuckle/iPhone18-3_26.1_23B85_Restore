@interface PKAccountWebServiceRequestPhysicalCardRequest
- (PKAccountWebServiceRequestPhysicalCardRequest)initWithCoder:(id)a3;
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
- (id)endpointComponents;
- (id)manifestHashWithReferenceIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountWebServiceRequestPhysicalCardRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKAccountWebServiceRequestPhysicalCardRequest *)self baseURL];
  if (!v5)
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

  v6 = [(PKAccountWebServiceRequestPhysicalCardRequest *)self endpointComponents];
  v7 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:v5 endpointComponents:v6 queryParameters:0 appleAccountInformation:v4];

  [v7 setHTTPMethod:@"POST"];
  [v7 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = [(PKPhysicalCardOrder *)self->_order artworkIdentifier];

  if (v9)
  {
    v10 = [(PKPhysicalCardOrder *)self->_order artworkIdentifier];
    [v8 setObject:v10 forKeyedSubscript:@"artworkIdentifier"];
  }

  v11 = [(PKPhysicalCardOrder *)self->_order nameOnCard];

  if (v11)
  {
    v12 = [(PKPhysicalCardOrder *)self->_order nameOnCard];
    [v8 setObject:v12 forKeyedSubscript:@"name"];
  }

  v13 = PKStringFromPhysicalCardOrderReason([(PKPhysicalCardOrder *)self->_order reason]);
  [v8 setObject:v13 forKeyedSubscript:@"reason"];

  [v8 setObject:self->_accountUserAltDSID forKeyedSubscript:@"accountUserAltDSID"];
  v14 = [(PKPaymentDeviceMetadata *)self->_deviceMetadata dictionaryRepresentation];
  if (v14)
  {
    [v8 setObject:v14 forKey:@"deviceMetadata"];
  }

  v15 = [(NSData *)self->_publicKeyHash hexEncoding];
  [v8 setObject:v15 forKeyedSubscript:@"publicKeyHash"];

  v16 = [objc_opt_class() _HTTPBodyWithDictionary:v8];
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

- (id)manifestHashWithReferenceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  if ([(NSString *)self->_accountIdentifier length])
  {
    [v5 appendString:self->_accountIdentifier];
  }

  v6 = [(PKPhysicalCardOrder *)self->_order artworkIdentifier];
  if ([v6 length])
  {
    [v5 appendString:v6];
  }

  v7 = PKStringFromPhysicalCardOrderReason([(PKPhysicalCardOrder *)self->_order reason]);
  if ([v7 length])
  {
    [v5 appendString:v7];
  }

  if (v4)
  {
    [v5 appendString:v4];
  }

  v8 = [v5 dataUsingEncoding:4];
  v9 = [v8 SHA256Hash];

  return v9;
}

- (PKAccountWebServiceRequestPhysicalCardRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAccountWebServiceRequestPhysicalCardRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    [(PKAccountWebServiceRequestPhysicalCardRequest *)v5 setBaseURL:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hashResponse"];
    [(PKAccountWebServiceRequestPhysicalCardRequest *)v5 setHashResponse:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"order"];
    order = v5->_order;
    v5->_order = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKAccountWebServiceRequestPhysicalCardRequest;
  v4 = a3;
  [(PKOverlayableWebServiceRequest *)&v7 encodeWithCoder:v4];
  v5 = [(PKAccountWebServiceRequestPhysicalCardRequest *)self baseURL:v7.receiver];
  [v4 encodeObject:v5 forKey:@"baseURL"];

  v6 = [(PKAccountWebServiceRequestPhysicalCardRequest *)self hashResponse];
  [v4 encodeObject:v6 forKey:@"hashResponse"];

  [v4 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v4 encodeObject:self->_accountUserAltDSID forKey:@"accountUserAltDSID"];
  [v4 encodeObject:self->_order forKey:@"order"];
}

@end