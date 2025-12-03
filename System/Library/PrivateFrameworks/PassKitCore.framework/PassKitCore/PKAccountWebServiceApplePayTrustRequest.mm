@interface PKAccountWebServiceApplePayTrustRequest
- (PKAccountWebServiceApplePayTrustRequest)initWithApplePayTrustProtocol:(id)protocol;
- (id)_urlRequestWithAppleAccountInformation:(id)information;
- (id)endpointComponents;
@end

@implementation PKAccountWebServiceApplePayTrustRequest

- (PKAccountWebServiceApplePayTrustRequest)initWithApplePayTrustProtocol:(id)protocol
{
  protocolCopy = protocol;
  v9.receiver = self;
  v9.super_class = PKAccountWebServiceApplePayTrustRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_protocol, protocol);
  }

  return v7;
}

- (id)endpointComponents
{
  endpointComponents = [(PKAccountWebServiceApplePayTrustProtocol *)self->_protocol endpointComponents];
  v3 = [endpointComponents arrayByAddingObject:@"signature"];

  return v3;
}

- (id)_urlRequestWithAppleAccountInformation:(id)information
{
  v29 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  baseURL = [(PKAccountWebServiceApplePayTrustProtocol *)self->_protocol baseURL];
  endpointComponents = [(PKAccountWebServiceApplePayTrustRequest *)self endpointComponents];
  hashResponse = [(PKAccountWebServiceApplePayTrustProtocol *)self->_protocol hashResponse];
  referenceIdentifier = [hashResponse referenceIdentifier];

  if (!baseURL)
  {
    v18 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v25 = 138543618;
    v26 = v20;
    v27 = 2082;
    v28 = "baseURL";
LABEL_18:
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v25, 0x16u);

    goto LABEL_19;
  }

  if (!endpointComponents)
  {
    v18 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v25 = 138543618;
    v26 = v20;
    v27 = 2082;
    v28 = "endpointComponents";
    goto LABEL_18;
  }

  if (!informationCopy)
  {
    v18 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v22 = objc_opt_class();
    v20 = NSStringFromClass(v22);
    v25 = 138543618;
    v26 = v20;
    v27 = 2082;
    v28 = "appleAccountInformation";
    goto LABEL_18;
  }

  if (!referenceIdentifier)
  {
    v18 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v20 = NSStringFromClass(v23);
      v25 = 138543618;
      v26 = v20;
      v27 = 2082;
      v28 = "referenceIdentifier";
      goto LABEL_18;
    }

LABEL_19:

    v17 = 0;
    goto LABEL_20;
  }

  v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:baseURL endpointComponents:endpointComponents queryParameters:0 appleAccountInformation:informationCopy];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:referenceIdentifier forKeyedSubscript:@"referenceIdentifier"];
  signatureData = [(PKApplePayTrustSignature *)self->_signature signatureData];
  hexEncoding = [signatureData hexEncoding];
  [v10 setObject:hexEncoding forKeyedSubscript:@"signatureData"];

  paymentData = [(PKApplePayTrustSignature *)self->_signature paymentData];
  v14 = paymentData;
  if (paymentData)
  {
    v15 = [paymentData base64EncodedStringWithOptions:0];
    [v10 setObject:v15 forKeyedSubscript:@"paymentData"];
  }

  if (v10)
  {
    v16 = [objc_opt_class() _HTTPBodyWithDictionary:v10];
    [v9 setHTTPBody:v16];
  }

  v17 = [v9 copy];

LABEL_20:

  return v17;
}

@end