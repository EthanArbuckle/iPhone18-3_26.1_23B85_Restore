@interface PKPaymentRequirementsRequest
- (PKPaymentRequirementsRequest)initWithCardholderName:(id)name primaryAccountNumber:(id)number;
- (PKPaymentRequirementsRequest)initWithPaymentCredential:(id)credential;
- (id)_cardDictionary;
- (void)_deviceScoreWithCompletion:(id)completion;
- (void)_secureCardDictionaryWithBuilder:(id)builder includingDeviceScore:(BOOL)score completion:(id)completion;
- (void)_urlRequestWithBuilder:(id)builder webService:(id)service completion:(id)completion;
@end

@implementation PKPaymentRequirementsRequest

- (PKPaymentRequirementsRequest)initWithPaymentCredential:(id)credential
{
  credentialCopy = credential;
  v12.receiver = self;
  v12.super_class = PKPaymentRequirementsRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentCredential, credential);
    underlyingPaymentPass = [credentialCopy underlyingPaymentPass];
    passTypeIdentifier = [underlyingPaymentPass passTypeIdentifier];
    region = v7->_region;
    v7->_region = passTypeIdentifier;
  }

  return v7;
}

- (PKPaymentRequirementsRequest)initWithCardholderName:(id)name primaryAccountNumber:(id)number
{
  nameCopy = name;
  numberCopy = number;
  v14.receiver = self;
  v14.super_class = PKPaymentRequirementsRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    cardholderName = v8->_cardholderName;
    v8->_cardholderName = v9;

    v11 = [numberCopy copy];
    primaryAccountNumber = v8->_primaryAccountNumber;
    v8->_primaryAccountNumber = v11;
  }

  return v8;
}

- (void)_urlRequestWithBuilder:(id)builder webService:(id)service completion:(id)completion
{
  v92[5] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  serviceCopy = service;
  completionCopy = completion;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__53;
  v86 = __Block_byref_object_dispose__53;
  v87 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__PKPaymentRequirementsRequest__urlRequestWithBuilder_webService_completion___block_invoke;
  aBlock[3] = &unk_1E79D2888;
  aBlock[4] = self;
  v11 = completionCopy;
  v81 = v11;
  v12 = _Block_copy(aBlock);
  _cardDictionary = [(PKPaymentRequirementsRequest *)self _cardDictionary];
  paymentCredential = self->_paymentCredential;
  if (paymentCredential && ![(PKPaymentCredential *)paymentCredential isContactlessProductCredential]&& ![(PKPaymentCredential *)self->_paymentCredential isDigitalIssuanceProductCredential]&& ![(PKPaymentCredential *)self->_paymentCredential isPurchasedProductCredential]&& ![(PKPaymentCredential *)self->_paymentCredential isFPANCredential])
  {
    isRemoteCredential = [(PKPaymentCredential *)self->_paymentCredential isRemoteCredential];
    v23 = isRemoteCredential | [(PKPaymentCredential *)self->_paymentCredential isLocalPassCredential];
    v24 = self->_paymentCredential;
    if (v23)
    {
      couldSupportSuperEasyProvisioning = [(PKPaymentCredential *)v24 couldSupportSuperEasyProvisioning];
      v25 = self->_paymentCredential;
      if (isRemoteCredential)
      {
        remoteCredential = [(PKPaymentCredential *)v25 remoteCredential];
        brokerURL = [builderCopy brokerURL];
        v92[0] = @"devices";
        deviceID = [builderCopy deviceID];
        v92[1] = deviceID;
        v92[2] = @"cards";
        identifier = [remoteCredential identifier];
        v92[3] = identifier;
        v92[4] = @"provisioningRequirements";
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:5];
        appleAccountInformation = [builderCopy appleAccountInformation];
        v30 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL endpointComponents:v28 queryParameters:0 appleAccountInformation:appleAccountInformation];
        v31 = v83[5];
        v83[5] = v30;
      }

      else
      {
        remoteCredential = [(PKPaymentCredential *)v25 localPassCredential];
        brokerURL2 = [builderCopy brokerURL];
        v91[0] = @"devices";
        deviceID2 = [builderCopy deviceID];
        v91[1] = deviceID2;
        v91[2] = @"passes";
        passTypeIdentifier = [remoteCredential passTypeIdentifier];
        v91[3] = passTypeIdentifier;
        serialNumber = [remoteCredential serialNumber];
        v91[4] = serialNumber;
        v91[5] = @"provisioningRequirements";
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:6];
        appleAccountInformation2 = [builderCopy appleAccountInformation];
        v48 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL2 endpointComponents:v46 queryParameters:0 appleAccountInformation:appleAccountInformation2];
        v49 = v83[5];
        v83[5] = v48;
      }

      state = [remoteCredential state];
      useNonce = [state useNonce];

      v50 = v83[5];
      if (couldSupportSuperEasyProvisioning)
      {
        [v50 setHTTPMethod:@"POST"];
        [v83[5] setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __77__PKPaymentRequirementsRequest__urlRequestWithBuilder_webService_completion___block_invoke_2;
        v73[3] = &unk_1E79DAFF0;
        v74 = _cardDictionary;
        useNonce = useNonce;
        v75 = useNonce;
        v76 = builderCopy;
        selfCopy = self;
        v79 = &v82;
        v78 = v12;
        [(PKPaymentRequirementsRequest *)self _secureCardDictionaryWithBuilder:v76 includingDeviceScore:1 completion:v73];
      }

      else
      {
        [v50 setHTTPMethod:@"GET"];
        (*(v12 + 2))(v12, v83[5]);
      }

      goto LABEL_7;
    }

    isAccountCredential = [(PKPaymentCredential *)v24 isAccountCredential];
    v34 = self->_paymentCredential;
    if (isAccountCredential)
    {
      accountCredential = [(PKPaymentCredential *)v34 accountCredential];
      passDetailsResponse = [accountCredential passDetailsResponse];
      provisioningIdentifier = [passDetailsResponse provisioningIdentifier];

      if (![provisioningIdentifier length])
      {
        v36 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Error: Missing provisioning identifier for requirements request", buf, 2u);
        }
      }

      brokerURL3 = [builderCopy brokerURL];
      v90[0] = @"devices";
      deviceID3 = [builderCopy deviceID];
      v90[1] = deviceID3;
      v90[2] = @"cards";
      v90[3] = provisioningIdentifier;
      v90[4] = @"provisioningRequirements";
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:5];
      appleAccountInformation3 = [builderCopy appleAccountInformation];
      v41 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL3 endpointComponents:v39 queryParameters:0 appleAccountInformation:appleAccountInformation3];
      v42 = v83[5];
      v83[5] = v41;

      [v83[5] setHTTPMethod:@"GET"];
      if (!v83[5])
      {
        v43 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "Error: Could not generate requirements request", buf, 2u);
        }
      }
    }

    else
    {
      if (![(PKPaymentCredential *)v34 isPeerPaymentCredential])
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Unknown PKPaymentCredential type."];
        goto LABEL_29;
      }

      accountCredential = [(PKPaymentCredential *)self->_paymentCredential peerPaymentCredential];
      passDetailsResponse2 = [accountCredential passDetailsResponse];
      provisioningIdentifier = [passDetailsResponse2 remoteCredential];

      brokerURL4 = [builderCopy brokerURL];
      v89[0] = @"devices";
      deviceID4 = [builderCopy deviceID];
      v89[1] = deviceID4;
      v89[2] = @"cards";
      identifier2 = [provisioningIdentifier identifier];
      v89[3] = identifier2;
      v89[4] = @"provisioningRequirements";
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
      appleAccountInformation4 = [builderCopy appleAccountInformation];
      v56 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL4 endpointComponents:v54 queryParameters:0 appleAccountInformation:appleAccountInformation4];
      v57 = v83[5];
      v83[5] = v56;

      [v83[5] setHTTPMethod:@"GET"];
    }

LABEL_29:
    (*(v12 + 2))(v12, v83[5]);
    goto LABEL_8;
  }

  brokerURL5 = [builderCopy brokerURL];
  v88[0] = @"devices";
  deviceID5 = [builderCopy deviceID];
  v88[1] = deviceID5;
  v88[2] = @"provisioningRequirements";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:3];
  appleAccountInformation5 = [builderCopy appleAccountInformation];
  v19 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL5 endpointComponents:v17 queryParameters:0 appleAccountInformation:appleAccountInformation5];
  v20 = v83[5];
  v83[5] = v19;

  [v83[5] setHTTPMethod:@"POST"];
  [v83[5] setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __77__PKPaymentRequirementsRequest__urlRequestWithBuilder_webService_completion___block_invoke_389;
  v66[3] = &unk_1E79DB018;
  v67 = builderCopy;
  selfCopy2 = self;
  v71 = &v82;
  v69 = _cardDictionary;
  v70 = v12;
  [(PKPaymentRequirementsRequest *)self _secureCardDictionaryWithBuilder:v67 includingDeviceScore:0 completion:v66];

  useNonce = v67;
LABEL_7:

LABEL_8:
  _Block_object_dispose(&v82, 8);
}

void __77__PKPaymentRequirementsRequest__urlRequestWithBuilder_webService_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  v10 = v3;
  if (v5)
  {
    [v3 setValue:v5 forHTTPHeaderField:@"x-apple-referrer-identifier"];
    v4 = *(a1 + 32);
  }

  v6 = *(v4 + 136);
  if (v6)
  {
    [v10 setValue:v6 forHTTPHeaderField:@"X-Apple-Ownership-Token"];
  }

  v7 = *(a1 + 40);
  v8 = v10;
  if (v7)
  {
    v9 = [v10 copy];
    (*(v7 + 16))(v7, v9);

    v8 = v10;
  }
}

void __77__PKPaymentRequirementsRequest__urlRequestWithBuilder_webService_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"nonce"];
  [*(a1 + 48) insertFraudDeviceForField:96 dictionary:*(a1 + 32)];
  v3 = *(a1 + 56);
  if ((*(v3 + 88) & 1) == 0)
  {
    [*(a1 + 48) insertFraudDeviceForField:144 dictionary:*(a1 + 32)];
    v3 = *(a1 + 56);
  }

  [*(a1 + 48) configureOverlayRequest:v3 urlRequest:*(*(*(a1 + 72) + 8) + 40) secureDictionary:v4 dictionary:*(a1 + 32)];
  (*(*(a1 + 64) + 16))();
}

uint64_t __77__PKPaymentRequirementsRequest__urlRequestWithBuilder_webService_completion___block_invoke_389(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) configureOverlayRequest:*(a1 + 40) urlRequest:*(*(*(a1 + 64) + 8) + 40) secureDictionary:a2 dictionary:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (id)_cardDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  paymentCredential = self->_paymentCredential;
  if (paymentCredential)
  {
    isContactlessProductCredential = [(PKPaymentCredential *)paymentCredential isContactlessProductCredential];
    v6 = self->_paymentCredential;
    if (isContactlessProductCredential)
    {
      contactlessProductCredential = [(PKPaymentCredential *)v6 contactlessProductCredential];
    }

    else
    {
      if (!v6 || ![(PKPaymentCredential *)v6 isDigitalIssuanceProductCredential])
      {
        goto LABEL_10;
      }

      contactlessProductCredential = [(PKPaymentCredential *)self->_paymentCredential digitalIssuanceProductCredential];
    }

    v8 = contactlessProductCredential;
    productIdentifier = [contactlessProductCredential productIdentifier];

    if (productIdentifier)
    {
      [v3 setObject:productIdentifier forKeyedSubscript:@"productIdentifier"];
    }
  }

LABEL_10:

  return v3;
}

- (void)_secureCardDictionaryWithBuilder:(id)builder includingDeviceScore:(BOOL)score completion:(id)completion
{
  scoreCopy = score;
  builderCopy = builder;
  completionCopy = completion;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  paymentCredential = self->_paymentCredential;
  if (paymentCredential)
  {
    isContactlessProductCredential = [(PKPaymentCredential *)paymentCredential isContactlessProductCredential];
    v13 = self->_paymentCredential;
    if (isContactlessProductCredential)
    {
      contactlessProductCredential = [(PKPaymentCredential *)v13 contactlessProductCredential];
      cardSessionToken = [contactlessProductCredential cardSessionToken];
      if (!cardSessionToken)
      {
LABEL_17:

        goto LABEL_25;
      }

      v16 = @"cardSessionToken";
LABEL_5:
      [v10 setObject:cardSessionToken forKeyedSubscript:v16];
      goto LABEL_17;
    }

    if (v13)
    {
      isDigitalIssuanceProductCredential = [(PKPaymentCredential *)v13 isDigitalIssuanceProductCredential];
      v18 = self->_paymentCredential;
      if (isDigitalIssuanceProductCredential)
      {
        digitalIssuanceProductCredential = [(PKPaymentCredential *)v18 digitalIssuanceProductCredential];
LABEL_12:
        contactlessProductCredential = digitalIssuanceProductCredential;
        cardSessionToken = [digitalIssuanceProductCredential purchase];
        identifier = [cardSessionToken identifier];
        partnerMetadata = [cardSessionToken partnerMetadata];
        if (identifier)
        {
          [v10 setObject:identifier forKeyedSubscript:@"provisioningToken"];
        }

        if (partnerMetadata)
        {
          [v10 setObject:partnerMetadata forKeyedSubscript:@"metadata"];
        }

        goto LABEL_17;
      }

      if (v18)
      {
        isPurchasedProductCredential = [(PKPaymentCredential *)v18 isPurchasedProductCredential];
        v21 = self->_paymentCredential;
        if (isPurchasedProductCredential)
        {
          digitalIssuanceProductCredential = [(PKPaymentCredential *)v21 purchasedProductCredential];
          goto LABEL_12;
        }

        if (v21 && [(PKPaymentCredential *)v21 isFPANCredential])
        {
          contactlessProductCredential = [(PKPaymentCredential *)self->_paymentCredential fpanCredential];
          cardholderName = [contactlessProductCredential cardholderName];
          [v10 setObject:cardholderName forKeyedSubscript:@"name"];

          cardSessionToken = [contactlessProductCredential cardNumber];
          v16 = @"primaryAccountNumber";
          goto LABEL_5;
        }
      }
    }
  }

  cardholderName = self->_cardholderName;
  if (cardholderName)
  {
    [v10 setObject:cardholderName forKeyedSubscript:@"name"];
  }

  primaryAccountNumber = self->_primaryAccountNumber;
  if (primaryAccountNumber)
  {
    [v10 setObject:primaryAccountNumber forKeyedSubscript:@"primaryAccountNumber"];
  }

LABEL_25:
  deviceData = [builderCopy deviceData];
  primaryJSBLSequenceCounter = [deviceData primaryJSBLSequenceCounter];
  stringValue = [primaryJSBLSequenceCounter stringValue];

  v30 = [stringValue dataUsingEncoding:4];
  hexEncoding = [v30 hexEncoding];
  [v10 setObject:hexEncoding forKeyedSubscript:@"jsblSequenceCounter"];

  if (scoreCopy)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __97__PKPaymentRequirementsRequest__secureCardDictionaryWithBuilder_includingDeviceScore_completion___block_invoke;
    v32[3] = &unk_1E79DB040;
    v33 = v10;
    v34 = completionCopy;
    [(PKPaymentRequirementsRequest *)self _deviceScoreWithCompletion:v32];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, v10);
  }
}

uint64_t __97__PKPaymentRequirementsRequest__secureCardDictionaryWithBuilder_includingDeviceScore_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyedSubscript:@"deviceScore"];
    if (a3)
    {
      v5 = @"2";
    }

    else
    {
      v5 = @"1";
    }

    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"deviceScoreVersion"];
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

- (void)_deviceScoreWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    if (+[PKDeviceScorer deviceScoringSupported]&& [(PKPaymentCredential *)self->_paymentCredential couldSupportSuperEasyProvisioning])
    {
      v5 = [PKODIServiceProviderAssessment alloc];
      v6 = *MEMORY[0x1E69985E8];
      v7 = PKPassKitCoreBundle();
      v8 = [(PKODIServiceProviderAssessment *)v5 initWithServiceProviderIdentifier:v6 locationBundle:v7];

      [(PKODIAssessment *)v8 startAssessment];
      [(PKODIAssessment *)v8 computeAssessment];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __59__PKPaymentRequirementsRequest__deviceScoreWithCompletion___block_invoke;
      v9[3] = &unk_1E79DAFA0;
      v10 = completionCopy;
      [(PKODIAssessment *)v8 waitForAssessmentWithTimeout:1 startTimeoutFromAssessmentStart:0 continueBlock:v9];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

@end