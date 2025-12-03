@interface PKPaymentCredentialAccountAttestationRequest
- (PKPaymentCredentialAccountAttestationRequest)initWithAttestationRequest:(id)request;
- (id)requestBodyWithAttesationRequest:(id)request;
- (void)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information webService:(id)service completion:(id)completion;
@end

@implementation PKPaymentCredentialAccountAttestationRequest

- (PKPaymentCredentialAccountAttestationRequest)initWithAttestationRequest:(id)request
{
  requestCopy = request;
  v5 = [(PKOverlayableWebServiceRequest *)self init];
  v6 = v5;
  if (v5 && ([(PKPaymentCredentialAccountAttestationRequest *)v5 requestBodyWithAttesationRequest:requestCopy], v7 = objc_claimAutoreleasedReturnValue(), requestBody = v6->_requestBody, v6->_requestBody = v7, requestBody, !v6->_requestBody))
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)requestBodyWithAttesationRequest:(id)request
{
  v18[5] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  casdCertificate = [requestCopy casdCertificate];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [casdCertificate certificateOfType:0];
  if (v6)
  {
    [v5 setObject:v6 forKey:@"ECDSA"];
    v7 = [casdCertificate certificateOfType:1];
    if (v7)
    {
      [v5 setObject:v7 forKey:@"RSA"];
    }

    if (![v5 count])
    {
      anonymizationSalt = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(anonymizationSalt, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, anonymizationSalt, OS_LOG_TYPE_DEFAULT, "Missing cert when creating account attesation request", v16, 2u);
      }

      v13 = 0;
      goto LABEL_26;
    }

    anonymizationSalt = [requestCopy anonymizationSalt];
    if (!anonymizationSalt)
    {
      hexEncoding = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(hexEncoding, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, hexEncoding, OS_LOG_TYPE_DEFAULT, "Missing anonymization salt when creating account attesation request", v16, 2u);
      }

      v13 = 0;
      goto LABEL_25;
    }

    subCASEResidencyAttestation = [requestCopy subCASEResidencyAttestation];
    hexEncoding = [subCASEResidencyAttestation hexEncoding];

    if (hexEncoding)
    {
      sharingTokenHash = [requestCopy sharingTokenHash];
      hexEncoding2 = [sharingTokenHash hexEncoding];

      if (hexEncoding2)
      {
        v17[0] = @"casdCertificate";
        v17[1] = @"casdCertificates";
        v18[0] = v6;
        v18[1] = v5;
        v17[2] = @"anonymizationSalt";
        v17[3] = @"subCAResidencyAttestation";
        v18[2] = anonymizationSalt;
        v18[3] = hexEncoding;
        v17[4] = @"sharingToken";
        v18[4] = hexEncoding2;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:5];
LABEL_24:

LABEL_25:
LABEL_26:

        goto LABEL_27;
      }

      v14 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Missing sharing token when creating account attesation request", v16, 2u);
      }

      hexEncoding2 = 0;
    }

    else
    {
      hexEncoding2 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(hexEncoding2, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, hexEncoding2, OS_LOG_TYPE_DEFAULT, "Missing subCA SE residency attesation when creating account attesation request", v16, 2u);
      }
    }

    v13 = 0;
    goto LABEL_24;
  }

  v7 = PKLogFacilityTypeGetObject(0x17uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Missing ecdsa casd cert when creating account attesation request", v16, 2u);
  }

  v13 = 0;
LABEL_27:

  return v13;
}

- (void)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information webService:(id)service completion:(id)completion
{
  v24[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v24[0] = @"devices";
  v24[1] = identifier;
  v24[2] = @"accountAttestation";
  v13 = MEMORY[0x1E695DEC8];
  serviceCopy = service;
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  v18 = [v13 arrayWithObjects:v24 count:3];
  v19 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v18 queryParameters:0 appleAccountInformation:informationCopy];

  [v19 setHTTPMethod:@"POST"];
  v20 = [objc_opt_class() _HTTPBodyWithDictionary:self->_requestBody];
  [v19 setHTTPBody:v20];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __137__PKPaymentCredentialAccountAttestationRequest__urlRequestWithServiceURL_deviceIdentifier_appleAccountInformation_webService_completion___block_invoke;
  v22[3] = &unk_1E79DAF50;
  v23 = completionCopy;
  v21 = completionCopy;
  [(PKPaymentWebServiceRequest *)self _signRequest:v19 webService:serviceCopy completion:v22];
}

void __137__PKPaymentCredentialAccountAttestationRequest__urlRequestWithServiceURL_deviceIdentifier_appleAccountInformation_webService_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 copy];
    (*(v2 + 16))(v2, v3);
  }
}

@end