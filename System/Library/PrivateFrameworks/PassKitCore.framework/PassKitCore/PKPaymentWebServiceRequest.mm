@interface PKPaymentWebServiceRequest
- (id)_murlRequestWithServiceURL:(id)l version:(id)version endpointComponents:(id)components queryParameters:(id)parameters appleAccountInformation:(id)information;
- (id)_murlRequestWithURL:(id)l;
- (void)_signRequest:(id)request webService:(id)service completion:(id)completion;
- (void)_signRequestData:(id)data forRequest:(id)request webService:(id)service completion:(id)completion;
@end

@implementation PKPaymentWebServiceRequest

- (void)_signRequest:(id)request webService:(id)service completion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  requestCopy = request;
  hTTPBody = [requestCopy HTTPBody];
  sHA256Hash = [hTTPBody SHA256Hash];
  [(PKPaymentWebServiceRequest *)self _signRequestData:sHA256Hash forRequest:requestCopy webService:serviceCopy completion:completionCopy];
}

- (void)_signRequestData:(id)data forRequest:(id)request webService:(id)service completion:(id)completion
{
  dataCopy = data;
  requestCopy = request;
  serviceCopy = service;
  completionCopy = completion;
  v13 = PKLogFacilityTypeGetObject(7uLL);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (requestCopy && serviceCopy)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Signing request", buf, 2u);
    }

    targetDevice = [serviceCopy targetDevice];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80__PKPaymentWebServiceRequest__signRequestData_forRequest_webService_completion___block_invoke;
    v16[3] = &unk_1E79C4608;
    v17 = requestCopy;
    v18 = completionCopy;
    [targetDevice paymentWebService:serviceCopy signData:dataCopy signatureEntanglementMode:1 withCompletionHandler:v16];
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Error: No webservice or nil request. Could not sign request", buf, 2u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
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

- (id)_murlRequestWithURL:(id)l
{
  v12.receiver = self;
  v12.super_class = PKPaymentWebServiceRequest;
  v4 = [(PKWebServiceRequest *)&v12 _murlRequestWithURL:l];
  targetDevice = self->_targetDevice;
  if (targetDevice)
  {
    secureElementIdentifiers = [(PKPaymentWebServiceTargetDeviceProtocol *)targetDevice secureElementIdentifiers];
    bridgedClientInfo = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice bridgedClientInfo];
    [v4 setValue:bridgedClientInfo forHTTPHeaderField:@"X-Apple-Bridged-Client-Info"];

    deviceRegion = [(PKPaymentWebServiceTargetDeviceProtocol *)self->_targetDevice deviceRegion];
    [v4 setValue:deviceRegion forHTTPHeaderField:@"X-Apple-Device-Region"];
  }

  else
  {
    v9 = PKCurrentRegion();
    [v4 setValue:v9 forHTTPHeaderField:@"X-Apple-Device-Region"];

    secureElementIdentifiers = +[PKSecureElement secureElementIdentifiers];
  }

  if ([objc_opt_class() includeSEIDHeader])
  {
    v10 = [secureElementIdentifiers componentsJoinedByString:{@", "}];
    [v4 setValue:v10 forHTTPHeaderField:@"x-apple-seid"];
  }

  return v4;
}

- (id)_murlRequestWithServiceURL:(id)l version:(id)version endpointComponents:(id)components queryParameters:(id)parameters appleAccountInformation:(id)information
{
  v12 = MEMORY[0x1E696AEC0];
  informationCopy = information;
  parametersCopy = parameters;
  componentsCopy = components;
  lCopy = l;
  version = [v12 stringWithFormat:@"v%@", version];
  v18 = [lCopy URLByAppendingPathComponent:version];

  v21.receiver = self;
  v21.super_class = PKPaymentWebServiceRequest;
  v19 = [(PKWebServiceRequest *)&v21 _murlRequestWithServiceURL:v18 endpointComponents:componentsCopy queryParameters:parametersCopy appleAccountInformation:informationCopy];

  return v19;
}

@end