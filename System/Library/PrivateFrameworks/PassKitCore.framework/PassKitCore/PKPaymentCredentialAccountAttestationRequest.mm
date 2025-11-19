@interface PKPaymentCredentialAccountAttestationRequest
- (PKPaymentCredentialAccountAttestationRequest)initWithAttestationRequest:(id)a3;
- (id)requestBodyWithAttesationRequest:(id)a3;
- (void)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5 webService:(id)a6 completion:(id)a7;
@end

@implementation PKPaymentCredentialAccountAttestationRequest

- (PKPaymentCredentialAccountAttestationRequest)initWithAttestationRequest:(id)a3
{
  v4 = a3;
  v5 = [(PKOverlayableWebServiceRequest *)self init];
  v6 = v5;
  if (v5 && ([(PKPaymentCredentialAccountAttestationRequest *)v5 requestBodyWithAttesationRequest:v4], v7 = objc_claimAutoreleasedReturnValue(), requestBody = v6->_requestBody, v6->_requestBody = v7, requestBody, !v6->_requestBody))
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (id)requestBodyWithAttesationRequest:(id)a3
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 casdCertificate];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [v4 certificateOfType:0];
  if (v6)
  {
    [v5 setObject:v6 forKey:@"ECDSA"];
    v7 = [v4 certificateOfType:1];
    if (v7)
    {
      [v5 setObject:v7 forKey:@"RSA"];
    }

    if (![v5 count])
    {
      v8 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Missing cert when creating account attesation request", v16, 2u);
      }

      v13 = 0;
      goto LABEL_26;
    }

    v8 = [v3 anonymizationSalt];
    if (!v8)
    {
      v10 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Missing anonymization salt when creating account attesation request", v16, 2u);
      }

      v13 = 0;
      goto LABEL_25;
    }

    v9 = [v3 subCASEResidencyAttestation];
    v10 = [v9 hexEncoding];

    if (v10)
    {
      v11 = [v3 sharingTokenHash];
      v12 = [v11 hexEncoding];

      if (v12)
      {
        v17[0] = @"casdCertificate";
        v17[1] = @"casdCertificates";
        v18[0] = v6;
        v18[1] = v5;
        v17[2] = @"anonymizationSalt";
        v17[3] = @"subCAResidencyAttestation";
        v18[2] = v8;
        v18[3] = v10;
        v17[4] = @"sharingToken";
        v18[4] = v12;
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

      v12 = 0;
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Missing subCA SE residency attesation when creating account attesation request", v16, 2u);
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

- (void)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5 webService:(id)a6 completion:(id)a7
{
  v24[3] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v24[0] = @"devices";
  v24[1] = a4;
  v24[2] = @"accountAttestation";
  v13 = MEMORY[0x1E695DEC8];
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v13 arrayWithObjects:v24 count:3];
  v19 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v17 endpointComponents:v18 queryParameters:0 appleAccountInformation:v15];

  [v19 setHTTPMethod:@"POST"];
  v20 = [objc_opt_class() _HTTPBodyWithDictionary:self->_requestBody];
  [v19 setHTTPBody:v20];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __137__PKPaymentCredentialAccountAttestationRequest__urlRequestWithServiceURL_deviceIdentifier_appleAccountInformation_webService_completion___block_invoke;
  v22[3] = &unk_1E79DAF50;
  v23 = v12;
  v21 = v12;
  [(PKPaymentWebServiceRequest *)self _signRequest:v19 webService:v14 completion:v22];
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