@interface PKPeerPaymentFailureDiagnosticRequest
- (PKPeerPaymentFailureDiagnosticRequest)initWithFailureDiagnostic:(id)diagnostic;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information;
@end

@implementation PKPeerPaymentFailureDiagnosticRequest

- (PKPeerPaymentFailureDiagnosticRequest)initWithFailureDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentFailureDiagnosticRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_failureDiagnostic, diagnostic);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information
{
  v36 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  v8 = informationCopy;
  if (!lCopy)
  {
    v26 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v32 = 138543618;
    v33 = v28;
    v34 = 2082;
    v35 = "url";
LABEL_23:
    _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", &v32, 0x16u);

    goto LABEL_24;
  }

  if (!informationCopy)
  {
    v26 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v29 = objc_opt_class();
    v28 = NSStringFromClass(v29);
    v32 = 138543618;
    v33 = v28;
    v34 = 2082;
    v35 = "appleAccountInformation";
    goto LABEL_23;
  }

  if (!self->_failureDiagnostic)
  {
    v26 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v28 = NSStringFromClass(v30);
      v32 = 138543618;
      v33 = v28;
      v34 = 2082;
      v35 = "_failureDiagnostic";
      goto LABEL_23;
    }

LABEL_24:

    v25 = 0;
    goto LABEL_25;
  }

  v9 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B4880 queryParameters:0 appleAccountInformation:informationCopy];
  [v9 setHTTPMethod:@"POST"];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(PKPeerPaymentFailureDiagnostic *)self->_failureDiagnostic flowType])
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = @"deviceTap";
  }

  [v10 setObject:v11 forKeyedSubscript:@"flowType"];
  role = [(PKPeerPaymentFailureDiagnostic *)self->_failureDiagnostic role];
  v13 = @"receiver";
  if (role != 1)
  {
    v13 = @"unknown";
  }

  if (role)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"sender";
  }

  [v10 setObject:v14 forKeyedSubscript:@"role"];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PKPeerPaymentFailureDiagnostic reasonCode](self->_failureDiagnostic, "reasonCode")}];
  [v10 setObject:v15 forKeyedSubscript:@"reasonCode"];

  transactionIdentifier = [(PKPeerPaymentFailureDiagnostic *)self->_failureDiagnostic transactionIdentifier];
  v17 = [transactionIdentifier length];

  if (v17)
  {
    transactionIdentifier2 = [(PKPeerPaymentFailureDiagnostic *)self->_failureDiagnostic transactionIdentifier];
    [v10 setObject:transactionIdentifier2 forKeyedSubscript:@"transactionIdentifier"];
  }

  error = [(PKPeerPaymentFailureDiagnostic *)self->_failureDiagnostic error];
  v20 = error;
  if (error)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(error, "code")}];
    [v10 setObject:v21 forKeyedSubscript:@"errorCode"];

    domain = [v20 domain];
    [v10 setObject:domain forKeyedSubscript:@"errorDomain"];

    v23 = [v20 description];
    [v10 setObject:v23 forKeyedSubscript:@"errorDescription"];
  }

  v24 = [objc_opt_class() _HTTPBodyWithDictionary:v10];
  [v9 setHTTPBody:v24];

  v25 = [v9 copy];
LABEL_25:

  return v25;
}

@end