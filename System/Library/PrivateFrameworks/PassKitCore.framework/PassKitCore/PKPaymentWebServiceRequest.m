@interface PKPaymentWebServiceRequest
- (id)_murlRequestWithServiceURL:(id)a3 version:(id)a4 endpointComponents:(id)a5 queryParameters:(id)a6 appleAccountInformation:(id)a7;
- (id)_murlRequestWithURL:(id)a3;
- (void)_signRequest:(id)a3 webService:(id)a4 completion:(id)a5;
- (void)_signRequestData:(id)a3 forRequest:(id)a4 webService:(id)a5 completion:(id)a6;
@end

@implementation PKPaymentWebServiceRequest

- (void)_signRequest:(id)a3 webService:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [v10 HTTPBody];
  v11 = [v12 SHA256Hash];
  [(PKPaymentWebServiceRequest *)self _signRequestData:v11 forRequest:v10 webService:v9 completion:v8];
}

- (void)_signRequestData:(id)a3 forRequest:(id)a4 webService:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = PKLogFacilityTypeGetObject(7uLL);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v10 && v11)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Signing request", buf, 2u);
    }

    v15 = [v11 targetDevice];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80__PKPaymentWebServiceRequest__signRequestData_forRequest_webService_completion___block_invoke;
    v16[3] = &unk_1E79C4608;
    v17 = v10;
    v18 = v12;
    [v15 paymentWebService:v11 signData:v9 signatureEntanglementMode:1 withCompletionHandler:v16];
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Error: No webservice or nil request. Could not sign request", buf, 2u);
    }

    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }
}

void __80__PKPaymentWebServiceRequest__signRequestData_forRequest_webService_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v9;
      _os_log_error_impl(&dword_1AD337000, v10, OS_LOG_TYPE_ERROR, "Error: Error signing request :%{public}@", &v14, 0xCu);
    }
  }

  PKUpdateURLRequestWithSignatureDataAndInfo(*(a1 + 32), v7, v8);
  v11 = *(a1 + 40);
  if (v11)
  {
    if (v7)
    {
      v12 = *(v11 + 16);
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "Error: Could not set x-apple-signature header no value", &v14, 2u);
      }

      v12 = *(*(a1 + 40) + 16);
    }

    v12();
  }
}

- (id)_murlRequestWithURL:(id)a3
{
  v12.receiver = self;
  v12.super_class = PKPaymentWebServiceRequest;
  v4 = [(PKWebServiceRequest *)&v12 _murlRequestWithURL:a3];
  targetDevice = self->_targetDevice;
  if (targetDevice)
  {
    v6 = [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice secureElementIdentifiers];
    v7 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice bridgedClientInfo];
    [v4 setValue:v7 forHTTPHeaderField:@"X-Apple-Bridged-Client-Info"];

    v8 = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
    [v4 setValue:v8 forHTTPHeaderField:@"X-Apple-Device-Region"];
  }

  else
  {
    v9 = PKCurrentRegion();
    [v4 setValue:v9 forHTTPHeaderField:@"X-Apple-Device-Region"];

    v6 = +[PKSecureElement secureElementIdentifiers];
  }

  if ([objc_opt_class() includeSEIDHeader])
  {
    v10 = [v6 componentsJoinedByString:{@", "}];
    [v4 setValue:v10 forHTTPHeaderField:@"x-apple-seid"];
  }

  return v4;
}

- (id)_murlRequestWithServiceURL:(id)a3 version:(id)a4 endpointComponents:(id)a5 queryParameters:(id)a6 appleAccountInformation:(id)a7
{
  v12 = MEMORY[0x1E696AEC0];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = [v12 stringWithFormat:@"v%@", a4];
  v18 = [v16 URLByAppendingPathComponent:v17];

  v21.receiver = self;
  v21.super_class = PKPaymentWebServiceRequest;
  v19 = [(PKWebServiceRequest *)&v21 _murlRequestWithServiceURL:v18 endpointComponents:v15 queryParameters:v14 appleAccountInformation:v13];

  return v19;
}

@end