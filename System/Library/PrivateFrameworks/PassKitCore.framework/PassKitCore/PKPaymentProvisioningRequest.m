@interface PKPaymentProvisioningRequest
- (BOOL)isDeviceProvisioningDataExpected;
- (PKPaymentProvisioningRequest)initWithCoder:(id)a3;
- (PKPaymentProvisioningRequest)initWithEligibilityResponse:(id)a3 addRequestConfiguration:(id)a4 addRequest:(id)a5;
- (PKPaymentProvisioningRequest)initWithEligibilityResponse:(id)a3 style:(int64_t)a4;
- (id)_secureParameters;
- (void)_deviceScoreWithCompletion:(id)a3;
- (void)_requestBodyWithBuilder:(id)a3 request:(id)a4 completion:(id)a5;
- (void)_updateRequestForRedirect:(id)a3 overrides:(id)a4 webService:(id)a5 withCompletion:(id)a6;
- (void)_updateRequestForRetry:(id)a3 retryFields:(id)a4 webService:(id)a5 withCompletion:(id)a6;
- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentProvisioningRequest

- (PKPaymentProvisioningRequest)initWithEligibilityResponse:(id)a3 style:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentProvisioningRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_style = a4;
    objc_storeStrong(&v8->_eligibilityResponse, a3);
  }

  return v9;
}

- (PKPaymentProvisioningRequest)initWithEligibilityResponse:(id)a3 addRequestConfiguration:(id)a4 addRequest:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a4 style];
  if (v10 <= 1)
  {
    self = [(PKPaymentProvisioningRequest *)self initWithEligibilityResponse:v8 style:v10];
  }

  if (self)
  {
    v11 = [v9 activationData];
    [(PKPaymentProvisioningRequest *)self setActivationData:v11];
  }

  return self;
}

- (PKPaymentProvisioningRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v95.receiver = self;
  v95.super_class = PKPaymentProvisioningRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v95 initWithCoder:v4];
  if (v5)
  {
    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eligibilityResponse"];
    eligibilityResponse = v5->_eligibilityResponse;
    v5->_eligibilityResponse = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    v11 = [v10 pk_zString];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardSecurityCode"];
    v14 = [v13 pk_zString];
    cardSecurityCode = v5->_cardSecurityCode;
    v5->_cardSecurityCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationData"];
    activationData = v5->_activationData;
    v5->_activationData = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerIdentifier"];
    referrerIdentifier = v5->_referrerIdentifier;
    v5->_referrerIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v20;

    v22 = objc_alloc(MEMORY[0x1E695DFD8]);
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = [v22 initWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"dynamicFieldParameters"];
    dynamicFieldParameters = v5->_dynamicFieldParameters;
    v5->_dynamicFieldParameters = v27;

    v29 = [v4 decodeObjectOfClasses:v26 forKey:@"encryptedDynamicFieldParameters"];
    encryptedDynamicFieldParameters = v5->_encryptedDynamicFieldParameters;
    v5->_encryptedDynamicFieldParameters = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"externalDestinationDevices"];
    externalDestinationDevices = v5->_externalDestinationDevices;
    v5->_externalDestinationDevices = v34;

    v5->_includeExternalDestinationDevices = [v4 decodeBoolForKey:@"includeExternalDestinationDevices"];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferFromDevice"];
    transferFromDevice = v5->_transferFromDevice;
    v5->_transferFromDevice = v36;

    v5->_removeFromSourceDevice = [v4 decodeBoolForKey:@"removeFromSourceDevice"];
    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fidoAttestation"];
    fidoAttestation = v5->_fidoAttestation;
    v5->_fidoAttestation = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fidoKey"];
    fidoKey = v5->_fidoKey;
    v5->_fidoKey = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fidoSignedChallenge"];
    fidoSignedChallenge = v5->_fidoSignedChallenge;
    v5->_fidoSignedChallenge = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seBlobDeviceEncryptionCertificate"];
    seBlobDeviceEncryptionCertificate = v5->_seBlobDeviceEncryptionCertificate;
    v5->_seBlobDeviceEncryptionCertificate = v46;

    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    v51 = [v4 decodeObjectOfClasses:v50 forKey:@"transactionKeyCertificateChain"];
    transactionKeyCertificateChain = v5->_transactionKeyCertificateChain;
    v5->_transactionKeyCertificateChain = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"longTermPrivacyKey"];
    longTermPrivacyKey = v5->_longTermPrivacyKey;
    v5->_longTermPrivacyKey = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKey"];
    transactionKey = v5->_transactionKey;
    v5->_transactionKey = v55;

    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
    v60 = [v4 decodeObjectOfClasses:v59 forKey:@"isoDeviceEncryptionAttestation"];
    isoDeviceEncryptionAttestation = v5->_isoDeviceEncryptionAttestation;
    v5->_isoDeviceEncryptionAttestation = v60;

    v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isoDeviceEncryptionAuthorization"];
    isoDeviceEncryptionAuthorization = v5->_isoDeviceEncryptionAuthorization;
    v5->_isoDeviceEncryptionAuthorization = v62;

    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subCredentialIdentifier"];
    subCredentialIdentifier = v5->_subCredentialIdentifier;
    v5->_subCredentialIdentifier = v64;

    v66 = MEMORY[0x1E695DFD8];
    v67 = objc_opt_class();
    v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
    v69 = [v4 decodeObjectOfClasses:v68 forKey:@"authorizationKeyAttestation"];
    authorizationKeyAttestation = v5->_authorizationKeyAttestation;
    v5->_authorizationKeyAttestation = v69;

    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyAttestation"];
    transactionKeyAttestation = v5->_transactionKeyAttestation;
    v5->_transactionKeyAttestation = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeySignature"];
    transactionKeySignature = v5->_transactionKeySignature;
    v5->_transactionKeySignature = v73;

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionKeyAuthorization"];
    transactionKeyAuthorization = v5->_transactionKeyAuthorization;
    v5->_transactionKeyAuthorization = v75;

    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"progenitorKeyAttestation"];
    progenitorKeyCASDAttestation = v5->_progenitorKeyCASDAttestation;
    v5->_progenitorKeyCASDAttestation = v77;

    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
    v82 = [v4 decodeObjectOfClasses:v81 forKey:@"transactionKeyData"];
    transactionKeys = v5->_transactionKeys;
    v5->_transactionKeys = v82;

    v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverAttestedProvisioningData"];
    serverAttestedProvisioningData = v5->_serverAttestedProvisioningData;
    v5->_serverAttestedProvisioningData = v84;

    v86 = MEMORY[0x1E695DFD8];
    v87 = objc_opt_class();
    v88 = objc_opt_class();
    v89 = [v86 setWithObjects:{v87, v88, objc_opt_class(), 0}];
    v90 = [v4 decodeObjectOfClasses:v89 forKey:@"auxiliaryCapabilities"];
    auxiliaryCapabilities = v5->_auxiliaryCapabilities;
    v5->_auxiliaryCapabilities = v90;

    v92 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tapToProvisionData"];
    tapToProvisionData = v5->_tapToProvisionData;
    v5->_tapToProvisionData = v92;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentProvisioningRequest;
  v4 = a3;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_style forKey:{@"style", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_eligibilityResponse forKey:@"eligibilityResponse"];
  [v4 encodeObject:self->_nonce forKey:@"nonce"];
  [v4 encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [v4 encodeObject:self->_cardSecurityCode forKey:@"cardSecurityCode"];
  [v4 encodeObject:self->_activationData forKey:@"activationData"];
  [v4 encodeObject:self->_referrerIdentifier forKey:@"referrerIdentifier"];
  [v4 encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [v4 encodeObject:self->_dynamicFieldParameters forKey:@"dynamicFieldParameters"];
  [v4 encodeObject:self->_encryptedDynamicFieldParameters forKey:@"encryptedDynamicFieldParameters"];
  [v4 encodeObject:self->_externalDestinationDevices forKey:@"externalDestinationDevices"];
  [v4 encodeBool:self->_includeExternalDestinationDevices forKey:@"includeExternalDestinationDevices"];
  [v4 encodeObject:self->_transferFromDevice forKey:@"transferFromDevice"];
  [v4 encodeBool:self->_removeFromSourceDevice forKey:@"removeFromSourceDevice"];
  [v4 encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
  [v4 encodeObject:self->_fidoAttestation forKey:@"fidoAttestation"];
  [v4 encodeObject:self->_fidoKey forKey:@"fidoKey"];
  [v4 encodeObject:self->_fidoSignedChallenge forKey:@"fidoSignedChallenge"];
  [v4 encodeObject:self->_seBlobDeviceEncryptionCertificate forKey:@"seBlobDeviceEncryptionCertificate"];
  [v4 encodeObject:self->_transactionKeyCertificateChain forKey:@"transactionKeyCertificateChain"];
  [v4 encodeObject:self->_longTermPrivacyKey forKey:@"longTermPrivacyKey"];
  [v4 encodeObject:self->_transactionKey forKey:@"transactionKey"];
  [v4 encodeObject:self->_isoDeviceEncryptionAttestation forKey:@"isoDeviceEncryptionAttestation"];
  [v4 encodeObject:self->_isoDeviceEncryptionAuthorization forKey:@"isoDeviceEncryptionAuthorization"];
  [v4 encodeObject:self->_subCredentialIdentifier forKey:@"subCredentialIdentifier"];
  [v4 encodeObject:self->_authorizationKeyAttestation forKey:@"authorizationKeyAttestation"];
  [v4 encodeObject:self->_transactionKeyAttestation forKey:@"transactionKeyAttestation"];
  [v4 encodeObject:self->_transactionKeySignature forKey:@"transactionKeySignature"];
  [v4 encodeObject:self->_transactionKeyAuthorization forKey:@"transactionKeyAuthorization"];
  [v4 encodeObject:self->_progenitorKeyCASDAttestation forKey:@"progenitorKeyAttestation"];
  [v4 encodeObject:self->_transactionKeys forKey:@"transactionKeyData"];
  [v4 encodeObject:self->_serverAttestedProvisioningData forKey:@"serverAttestedProvisioningData"];
  [v4 encodeObject:self->_auxiliaryCapabilities forKey:@"auxiliaryCapabilities"];
  [v4 encodeObject:self->_tapToProvisionData forKey:@"tapToProvisionData"];
}

- (BOOL)isDeviceProvisioningDataExpected
{
  v3 = [(PKPaymentProvisioningRequest *)self eligibilityResponse];
  v4 = [v3 cardType];

  if (v4 == 107 || self->_style == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = PKProvisioningForceAccessStyle();
  }

  v6 = [(PKPaymentEligibilityResponse *)self->_eligibilityResponse deviceProvisioningDataExpected];
  v7 = v6 == 1 && v5 == 0;
  if (v7 || v6 == 1 && ((v5 ^ 1) & 1) == 0 && self->_sendReducedDeviceData)
  {
    return 1;
  }

  else
  {
    return (v6 == 0) & (v5 ^ 1);
  }
}

- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5
{
  v25[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 brokerURL];
  v25[0] = @"devices";
  v12 = [v8 deviceID];
  v25[1] = v12;
  v25[2] = @"cards";
  v13 = [(PKPaymentEligibilityResponse *)self->_eligibilityResponse identifier];
  v25[3] = v13;
  v25[4] = @"enable";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
  v15 = [v8 appleAccountInformation];
  v16 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v14 queryParameters:0 appleAccountInformation:v15];

  [v16 setHTTPMethod:@"POST"];
  [v16 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
  referrerIdentifier = self->_referrerIdentifier;
  if (referrerIdentifier)
  {
    [v16 setValue:referrerIdentifier forHTTPHeaderField:@"x-apple-referrer-identifier"];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__PKPaymentProvisioningRequest__urlRequestWithBuilder_webService_completion___block_invoke;
  v21[3] = &unk_1E79C4EF0;
  v21[4] = self;
  v22 = v16;
  v23 = v9;
  v24 = v10;
  v18 = v10;
  v19 = v9;
  v20 = v16;
  [(PKPaymentProvisioningRequest *)self _requestBodyWithBuilder:v8 request:v20 completion:v21];
}

void __77__PKPaymentProvisioningRequest__urlRequestWithBuilder_webService_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__PKPaymentProvisioningRequest__urlRequestWithBuilder_webService_completion___block_invoke_2;
  v4[3] = &unk_1E79DAF50;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 _signRequest:v2 webService:v3 completion:v4];
}

void __77__PKPaymentProvisioningRequest__urlRequestWithBuilder_webService_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copy];
  (*(v2 + 16))(v2, v3);
}

- (void)_updateRequestForRetry:(id)a3 retryFields:(id)a4 webService:(id)a5 withCompletion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [a4 PKStringForKey:@"nonce"];
  if (v13)
  {
    objc_storeStrong(&self->_nonce, v13);
    [(PKOverlayableWebServiceRequest *)self setOverlayValue:v13 forKey:@"nonce"];
  }

  else
  {
    v14 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Error: Retry response data did not contain nonce", buf, 2u);
    }
  }

  v15 = objc_opt_class();
  v16 = [(PKOverlayableWebServiceRequest *)self overlayParameters];
  v17 = [v15 _HTTPBodyWithDictionary:v16];
  [v12 setHTTPBody:v17];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __93__PKPaymentProvisioningRequest__updateRequestForRetry_retryFields_webService_withCompletion___block_invoke;
  v19[3] = &unk_1E79DAF50;
  v20 = v10;
  v18 = v10;
  [(PKPaymentWebServiceRequest *)self _signRequest:v12 webService:v11 completion:v19];
}

uint64_t __93__PKPaymentProvisioningRequest__updateRequestForRetry_retryFields_webService_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateRequestForRedirect:(id)a3 overrides:(id)a4 webService:(id)a5 withCompletion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__PKPaymentProvisioningRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke;
  v15[3] = &unk_1E79DAFC8;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v14.receiver = self;
  v14.super_class = PKPaymentProvisioningRequest;
  v12 = v11;
  v13 = v10;
  [(PKOverlayableWebServiceRequest *)&v14 _updateRequestForRedirect:a3 overrides:a4 webService:v13 withCompletion:v15];
}

void __94__PKPaymentProvisioningRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__PKPaymentProvisioningRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke_2;
  v5[3] = &unk_1E79DAF50;
  v6 = *(a1 + 48);
  [v3 _signRequest:a2 webService:v4 completion:v5];
}

uint64_t __94__PKPaymentProvisioningRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_requestBodyWithBuilder:(id)a3 request:(id)a4 completion:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v27 = a4;
  v29 = a5;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__53;
  v48 = __Block_byref_object_dispose__53;
  v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_dynamicFieldParameters)
  {
    [v45[5] addEntriesFromDictionary:?];
  }

  if ([(PKPaymentProvisioningRequest *)self isDeviceProvisioningDataExpected])
  {
    [v31 insertFraudDeviceForField:96 dictionary:v45[5]];
    if (!self->_sendReducedDeviceData)
    {
      [v31 insertFraudDeviceForField:144 dictionary:v45[5]];
    }
  }

  v7 = [(PKPaymentEligibilityResponse *)self->_eligibilityResponse termsID];
  [v45[5] setObject:v7 forKeyedSubscript:@"termsID"];

  [v45[5] setObject:self->_nonce forKeyedSubscript:@"nonce"];
  v8 = [(NSData *)self->_activationData base64EncodedStringWithOptions:0];
  [v45[5] setObject:v8 forKeyedSubscript:@"activationData"];

  v9 = [(NSData *)self->_longTermPrivacyKey base64EncodedStringWithOptions:0];
  [v45[5] setObject:v9 forKeyedSubscript:@"longTermPrivacyKey"];

  [v45[5] setObject:self->_transferFromDevice forKeyedSubscript:@"transferFromDevice"];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_removeFromSourceDevice];
  [v45[5] setObject:v10 forKeyedSubscript:@"removeFromSourceDevice"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_includeExternalDestinationDevices];
  [v45[5] setObject:v11 forKeyedSubscript:@"includeExternalDestinationDevices"];

  v12 = [(PKPaymentTapToProvisionData *)self->_tapToProvisionData dictionaryRepresentation];
  [v45[5] setObject:v12 forKeyedSubscript:@"tapToProvisionCardData"];

  if (self->_encryptedPerFieldDynamicFieldParameters)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = self;
    obj = self->_encryptedPerFieldDynamicFieldParameters;
    v15 = [(NSDictionary *)obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v15)
    {
      v16 = *v41;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v41 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v40 + 1) + 8 * i);
          v19 = [(NSDictionary *)v14->_encryptedPerFieldDynamicFieldParameters objectForKeyedSubscript:v18];
          v20 = [v19 dataRepresentation];
          v21 = [v19 encryptionScheme];
          v22 = [v19 encryptionCertificates];
          v23 = [v31 createEncryptedDictionaryWithData:v20 encryptedContentKey:@"encryptedData" scheme:v21 certificates:v22];
          [v13 setObject:v23 forKeyedSubscript:v18];

          v14 = self;
        }

        v15 = [(NSDictionary *)obj countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v15);
    }

    [v45[5] setObject:v13 forKeyedSubscript:@"encryptedPinFields"];
  }

  v24 = [(PKPaymentProvisioningRequest *)self _secureParameters];
  v25 = v24;
  style = self->_style;
  if (style)
  {
    if (style == 1)
    {
      [v31 configureOverlayRequest:self urlRequest:v28 secureDictionary:v24 dictionary:v45[5]];
      v29[2]();
    }
  }

  else
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __75__PKPaymentProvisioningRequest__requestBodyWithBuilder_request_completion___block_invoke;
    v33[3] = &unk_1E79DB068;
    v39 = &v44;
    v34 = v24;
    v35 = self;
    v36 = v31;
    v37 = v28;
    v38 = v29;
    [(PKPaymentProvisioningRequest *)self _deviceScoreWithCompletion:v33];
  }

  _Block_object_dispose(&v44, 8);
}

void __75__PKPaymentProvisioningRequest__requestBodyWithBuilder_request_completion___block_invoke(uint64_t a1, void *a2, int a3)
{
  v18 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(*(*(a1 + 72) + 8) + 40) objectForKey:@"cardSecurityCode"];

  v7 = [*(a1 + 32) objectForKey:@"cardSecurityCode"];

  v8 = *(a1 + 40);
  if (*(v8 + 136))
  {
    v9 = !*(v8 + 144) && v6 == 0;
    if (v9 && v7 == 0)
    {
      [*(a1 + 32) setValue:? forKey:?];
    }
  }

  if (v18)
  {
    [*(a1 + 32) setObject:v18 forKeyedSubscript:@"deviceScore"];
    if (a3)
    {
      v11 = @"2";
    }

    else
    {
      v11 = @"1";
    }

    [*(a1 + 32) setObject:v11 forKeyedSubscript:@"deviceScoreVersion"];
  }

  v12 = [*(a1 + 48) deviceData];
  v13 = [v12 primaryJSBLSequenceCounter];
  v14 = [v13 copy];

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 stringValue];
      v16 = [v15 dataUsingEncoding:4];
      v17 = [v16 hexEncoding];
      [*(a1 + 32) setObject:v17 forKeyedSubscript:@"jsblSequenceCounter"];
    }
  }

  [*(a1 + 48) configureOverlayRequest:*(a1 + 40) urlRequest:*(a1 + 56) secureDictionary:*(a1 + 32) dictionary:*(*(*(a1 + 72) + 8) + 40)];

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 64) + 16))();
}

- (id)_secureParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  if (self->_encryptedDynamicFieldParameters)
  {
    [v3 addEntriesFromDictionary:?];
  }

  externalDestinationDevices = self->_externalDestinationDevices;
  if (externalDestinationDevices)
  {
    [v4 setObject:externalDestinationDevices forKeyedSubscript:@"externalDestinationDevices"];
  }

  applicationIdentifier = self->_applicationIdentifier;
  if (applicationIdentifier)
  {
    [v4 setObject:applicationIdentifier forKey:@"applicationIdentifier"];
  }

  fidoAttestation = self->_fidoAttestation;
  if (fidoAttestation)
  {
    v8 = [(NSData *)fidoAttestation base64EncodedStringWithOptions:0];
    [v4 setObject:v8 forKey:@"fidoAttestation"];
  }

  fidoKey = self->_fidoKey;
  if (fidoKey)
  {
    v10 = [(NSData *)fidoKey base64EncodedStringWithOptions:0];
    [v4 setObject:v10 forKey:@"fidoKey"];
  }

  fidoSignedChallenge = self->_fidoSignedChallenge;
  if (fidoSignedChallenge)
  {
    v12 = [(NSData *)fidoSignedChallenge base64EncodedStringWithOptions:0];
    [v4 setObject:v12 forKey:@"fidoSignedChallenge"];
  }

  seBlobDeviceEncryptionCertificate = self->_seBlobDeviceEncryptionCertificate;
  if (seBlobDeviceEncryptionCertificate)
  {
    v14 = [(NSData *)seBlobDeviceEncryptionCertificate base64EncodedStringWithOptions:0];
    [v4 setObject:v14 forKey:@"seBlobDeviceEncryptionCertificate"];
  }

  transactionKeyCertificateChain = self->_transactionKeyCertificateChain;
  if (transactionKeyCertificateChain)
  {
    v16 = [(NSArray *)transactionKeyCertificateChain pk_arrayByApplyingBlock:&__block_literal_global_155];
    [v4 setObject:v16 forKey:@"transactionKeyCertificateChain"];
  }

  transactionKey = self->_transactionKey;
  if (transactionKey)
  {
    v18 = [(NSData *)transactionKey base64EncodedStringWithOptions:0];
    [v4 setObject:v18 forKey:@"transactionKey"];
  }

  isoDeviceEncryptionAttestation = self->_isoDeviceEncryptionAttestation;
  if (isoDeviceEncryptionAttestation)
  {
    [v4 setObject:isoDeviceEncryptionAttestation forKey:@"isoDeviceEncryptionAttestation"];
  }

  isoDeviceEncryptionAuthorization = self->_isoDeviceEncryptionAuthorization;
  if (isoDeviceEncryptionAuthorization)
  {
    v21 = [(NSData *)isoDeviceEncryptionAuthorization base64EncodedStringWithOptions:0];
    [v4 setObject:v21 forKey:@"isoDeviceEncryptionAuthorization"];
  }

  subCredentialIdentifier = self->_subCredentialIdentifier;
  if (subCredentialIdentifier)
  {
    [v4 setObject:subCredentialIdentifier forKey:@"subCredentialIdentifier"];
  }

  authorizationKeyAttestation = self->_authorizationKeyAttestation;
  if (authorizationKeyAttestation)
  {
    [v4 setObject:authorizationKeyAttestation forKey:@"authorizationKeyAttestation"];
  }

  transactionKeyAttestation = self->_transactionKeyAttestation;
  if (transactionKeyAttestation)
  {
    v25 = [(NSData *)transactionKeyAttestation base64EncodedStringWithOptions:0];
    [v4 setObject:v25 forKey:@"transactionKeyAttestation"];
  }

  transactionKeySignature = self->_transactionKeySignature;
  if (transactionKeySignature)
  {
    v27 = [(NSData *)transactionKeySignature base64EncodedStringWithOptions:0];
    [v4 setObject:v27 forKey:@"transactionKeySignature"];
  }

  transactionKeyAuthorization = self->_transactionKeyAuthorization;
  if (transactionKeyAuthorization)
  {
    v29 = [(NSData *)transactionKeyAuthorization base64EncodedStringWithOptions:0];
    [v4 setObject:v29 forKey:@"transactionKeyAuthorization"];
  }

  progenitorKeyCASDAttestation = self->_progenitorKeyCASDAttestation;
  if (progenitorKeyCASDAttestation)
  {
    v31 = [(NSData *)progenitorKeyCASDAttestation base64EncodedStringWithOptions:0];
    [v4 setObject:v31 forKey:@"progenitorKeyAttestation"];
  }

  transactionKeys = self->_transactionKeys;
  if (transactionKeys)
  {
    v33 = [(NSArray *)transactionKeys pk_arrayByApplyingBlock:&__block_literal_global_838];
    [v4 setObject:v33 forKey:@"transactionKeyData"];
  }

  serverAttestedProvisioningData = self->_serverAttestedProvisioningData;
  if (serverAttestedProvisioningData)
  {
    v35 = [(NSData *)serverAttestedProvisioningData base64EncodedStringWithOptions:0];
    [v4 setObject:v35 forKey:@"serverAttestedProvisioningData"];
  }

  if (self->_auxiliaryCapabilities)
  {
    v54 = v4;
    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v38 = [(NSMapTable *)self->_auxiliaryCapabilities keyEnumerator];
    v39 = [v38 nextObject];
    if (v39)
    {
      v40 = v39;
      while (1)
      {
        v41 = [(NSMapTable *)self->_auxiliaryCapabilities objectForKey:v40];
        v42 = [v40 role];
        v43 = v36;
        if (v42 == 1)
        {
          goto LABEL_45;
        }

        if (v42 == 2)
        {
          break;
        }

LABEL_47:

        v50 = [v38 nextObject];

        v40 = v50;
        if (!v50)
        {
          goto LABEL_48;
        }
      }

      v43 = v37;
LABEL_45:
      v44 = v43;
      if (v44)
      {
        v45 = v44;
        v46 = [v41 dictionaryRepresentation];
        v47 = [v46 mutableCopy];

        v48 = [v40 dictionaryRepresentation];
        [v47 setObject:v48 forKeyedSubscript:@"requirement"];

        v49 = [v47 copy];
        [v45 addObject:v49];
      }

      goto LABEL_47;
    }

LABEL_48:
    v4 = v54;
    if ([v36 count])
    {
      v51 = [v36 copy];
      [v54 setObject:v51 forKey:@"deviceDecryptions"];
    }

    if ([v37 count])
    {
      v52 = [v37 copy];
      [v54 setObject:v52 forKey:@"deviceSignatures"];
    }
  }

  return v4;
}

id __49__PKPaymentProvisioningRequest__secureParameters__block_invoke_2(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"transactionKeyAttestation";
  v2 = a2;
  v3 = [v2 casdAttestation];
  v4 = [v3 base64EncodedStringWithOptions:0];
  v9[1] = @"transactionKeyAuthorization";
  v10[0] = v4;
  v5 = [v2 authorization];

  v6 = [v5 base64EncodedStringWithOptions:0];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (void)_deviceScoreWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if (+[PKDeviceScorer deviceScoringSupported]&& [(PKPaymentProvisioningRequest *)self isDeviceProvisioningDataExpected]&& !self->_disableDeviceScore)
    {
      v5 = *(v6 + 2);
    }

    else
    {
      v5 = *(v6 + 2);
    }

    v5();
    v4 = v6;
  }
}

@end