@interface PKAccountWebServiceApplePayTrustRequest
- (PKAccountWebServiceApplePayTrustRequest)initWithApplePayTrustProtocol:(id)a3;
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
- (id)endpointComponents;
@end

@implementation PKAccountWebServiceApplePayTrustRequest

- (PKAccountWebServiceApplePayTrustRequest)initWithApplePayTrustProtocol:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKAccountWebServiceApplePayTrustRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_protocol, a3);
  }

  return v7;
}

- (id)endpointComponents
{
  v2 = [(PKAccountWebServiceApplePayTrustProtocol *)self->_protocol endpointComponents];
  v3 = [v2 arrayByAddingObject:@"signature"];

  return v3;
}

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKAccountWebServiceApplePayTrustProtocol *)self->_protocol baseURL];
  v6 = [(PKAccountWebServiceApplePayTrustRequest *)self endpointComponents];
  v7 = [(PKAccountWebServiceApplePayTrustProtocol *)self->_protocol hashResponse];
  v8 = [v7 referenceIdentifier];

  if (!v5)
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

  if (!v6)
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

  if (!v4)
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

  if (!v8)
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

  v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:v5 endpointComponents:v6 queryParameters:0 appleAccountInformation:v4];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:v8 forKeyedSubscript:@"referenceIdentifier"];
  v11 = [(PKApplePayTrustSignature *)self->_signature signatureData];
  v12 = [v11 hexEncoding];
  [v10 setObject:v12 forKeyedSubscript:@"signatureData"];

  v13 = [(PKApplePayTrustSignature *)self->_signature paymentData];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 base64EncodedStringWithOptions:0];
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