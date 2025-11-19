@interface PKPaymentRequirementsRequest
- (PKPaymentRequirementsRequest)initWithCardholderName:(id)a3 primaryAccountNumber:(id)a4;
- (PKPaymentRequirementsRequest)initWithPaymentCredential:(id)a3;
- (id)_cardDictionary;
- (void)_deviceScoreWithCompletion:(id)a3;
- (void)_secureCardDictionaryWithBuilder:(id)a3 includingDeviceScore:(BOOL)a4 completion:(id)a5;
- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5;
@end

@implementation PKPaymentRequirementsRequest

- (PKPaymentRequirementsRequest)initWithPaymentCredential:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PKPaymentRequirementsRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paymentCredential, a3);
    v8 = [v5 underlyingPaymentPass];
    v9 = [v8 passTypeIdentifier];
    region = v7->_region;
    v7->_region = v9;
  }

  return v7;
}

- (PKPaymentRequirementsRequest)initWithCardholderName:(id)a3 primaryAccountNumber:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PKPaymentRequirementsRequest;
  v8 = [(PKOverlayableWebServiceRequest *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    cardholderName = v8->_cardholderName;
    v8->_cardholderName = v9;

    v11 = [v7 copy];
    primaryAccountNumber = v8->_primaryAccountNumber;
    v8->_primaryAccountNumber = v11;
  }

  return v8;
}

- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5
{
  v92[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = v10;
  v81 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(PKPaymentRequirementsRequest *)self _cardDictionary];
  paymentCredential = self->_paymentCredential;
  if (paymentCredential && ![(PKPaymentCredential *)paymentCredential isContactlessProductCredential]&& ![(PKPaymentCredential *)self->_paymentCredential isDigitalIssuanceProductCredential]&& ![(PKPaymentCredential *)self->_paymentCredential isPurchasedProductCredential]&& ![(PKPaymentCredential *)self->_paymentCredential isFPANCredential])
  {
    v22 = [(PKPaymentCredential *)self->_paymentCredential isRemoteCredential];
    v23 = v22 | [(PKPaymentCredential *)self->_paymentCredential isLocalPassCredential];
    v24 = self->_paymentCredential;
    if (v23)
    {
      v62 = [(PKPaymentCredential *)v24 couldSupportSuperEasyProvisioning];
      v25 = self->_paymentCredential;
      if (v22)
      {
        v64 = [(PKPaymentCredential *)v25 remoteCredential];
        v59 = [v8 brokerURL];
        v92[0] = @"devices";
        v26 = [v8 deviceID];
        v92[1] = v26;
        v92[2] = @"cards";
        v27 = [v64 identifier];
        v92[3] = v27;
        v92[4] = @"provisioningRequirements";
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:5];
        v29 = [v8 appleAccountInformation];
        v30 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v59 endpointComponents:v28 queryParameters:0 appleAccountInformation:v29];
        v31 = v83[5];
        v83[5] = v30;
      }

      else
      {
        v64 = [(PKPaymentCredential *)v25 localPassCredential];
        v58 = [v8 brokerURL];
        v91[0] = @"devices";
        v60 = [v8 deviceID];
        v91[1] = v60;
        v91[2] = @"passes";
        v44 = [v64 passTypeIdentifier];
        v91[3] = v44;
        v45 = [v64 serialNumber];
        v91[4] = v45;
        v91[5] = @"provisioningRequirements";
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:6];
        v47 = [v8 appleAccountInformation];
        v48 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v58 endpointComponents:v46 queryParameters:0 appleAccountInformation:v47];
        v49 = v83[5];
        v83[5] = v48;
      }

      v32 = [v64 state];
      v21 = [v32 useNonce];

      v50 = v83[5];
      if (v62)
      {
        [v50 setHTTPMethod:@"POST"];
        [v83[5] setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __77__PKPaymentRequirementsRequest__urlRequestWithBuilder_webService_completion___block_invoke_2;
        v73[3] = &unk_1E79DAFF0;
        v74 = v13;
        v21 = v21;
        v75 = v21;
        v76 = v8;
        v77 = self;
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

    v33 = [(PKPaymentCredential *)v24 isAccountCredential];
    v34 = self->_paymentCredential;
    if (v33)
    {
      v63 = [(PKPaymentCredential *)v34 accountCredential];
      v35 = [v63 passDetailsResponse];
      v65 = [v35 provisioningIdentifier];

      if (![v65 length])
      {
        v36 = PKLogFacilityTypeGetObject(0xFuLL);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Error: Missing provisioning identifier for requirements request", buf, 2u);
        }
      }

      v37 = [v8 brokerURL];
      v90[0] = @"devices";
      v38 = [v8 deviceID];
      v90[1] = v38;
      v90[2] = @"cards";
      v90[3] = v65;
      v90[4] = @"provisioningRequirements";
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:5];
      v40 = [v8 appleAccountInformation];
      v41 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v37 endpointComponents:v39 queryParameters:0 appleAccountInformation:v40];
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

      v63 = [(PKPaymentCredential *)self->_paymentCredential peerPaymentCredential];
      v51 = [v63 passDetailsResponse];
      v65 = [v51 remoteCredential];

      v52 = [v8 brokerURL];
      v89[0] = @"devices";
      v61 = [v8 deviceID];
      v89[1] = v61;
      v89[2] = @"cards";
      v53 = [v65 identifier];
      v89[3] = v53;
      v89[4] = @"provisioningRequirements";
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:5];
      v55 = [v8 appleAccountInformation];
      v56 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v52 endpointComponents:v54 queryParameters:0 appleAccountInformation:v55];
      v57 = v83[5];
      v83[5] = v56;

      [v83[5] setHTTPMethod:@"GET"];
    }

LABEL_29:
    (*(v12 + 2))(v12, v83[5]);
    goto LABEL_8;
  }

  v15 = [v8 brokerURL];
  v88[0] = @"devices";
  v16 = [v8 deviceID];
  v88[1] = v16;
  v88[2] = @"provisioningRequirements";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:3];
  v18 = [v8 appleAccountInformation];
  v19 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v15 endpointComponents:v17 queryParameters:0 appleAccountInformation:v18];
  v20 = v83[5];
  v83[5] = v19;

  [v83[5] setHTTPMethod:@"POST"];
  [v83[5] setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __77__PKPaymentRequirementsRequest__urlRequestWithBuilder_webService_completion___block_invoke_389;
  v66[3] = &unk_1E79DB018;
  v67 = v8;
  v68 = self;
  v71 = &v82;
  v69 = v13;
  v70 = v12;
  [(PKPaymentRequirementsRequest *)self _secureCardDictionaryWithBuilder:v67 includingDeviceScore:0 completion:v66];

  v21 = v67;
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
    v5 = [(PKPaymentCredential *)paymentCredential isContactlessProductCredential];
    v6 = self->_paymentCredential;
    if (v5)
    {
      v7 = [(PKPaymentCredential *)v6 contactlessProductCredential];
    }

    else
    {
      if (!v6 || ![(PKPaymentCredential *)v6 isDigitalIssuanceProductCredential])
      {
        goto LABEL_10;
      }

      v7 = [(PKPaymentCredential *)self->_paymentCredential digitalIssuanceProductCredential];
    }

    v8 = v7;
    v9 = [v7 productIdentifier];

    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"productIdentifier"];
    }
  }

LABEL_10:

  return v3;
}

- (void)_secureCardDictionaryWithBuilder:(id)a3 includingDeviceScore:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  paymentCredential = self->_paymentCredential;
  if (paymentCredential)
  {
    v12 = [(PKPaymentCredential *)paymentCredential isContactlessProductCredential];
    v13 = self->_paymentCredential;
    if (v12)
    {
      v14 = [(PKPaymentCredential *)v13 contactlessProductCredential];
      v15 = [v14 cardSessionToken];
      if (!v15)
      {
LABEL_17:

        goto LABEL_25;
      }

      v16 = @"cardSessionToken";
LABEL_5:
      [v10 setObject:v15 forKeyedSubscript:v16];
      goto LABEL_17;
    }

    if (v13)
    {
      v17 = [(PKPaymentCredential *)v13 isDigitalIssuanceProductCredential];
      v18 = self->_paymentCredential;
      if (v17)
      {
        v19 = [(PKPaymentCredential *)v18 digitalIssuanceProductCredential];
LABEL_12:
        v14 = v19;
        v15 = [v19 purchase];
        v22 = [v15 identifier];
        v23 = [v15 partnerMetadata];
        if (v22)
        {
          [v10 setObject:v22 forKeyedSubscript:@"provisioningToken"];
        }

        if (v23)
        {
          [v10 setObject:v23 forKeyedSubscript:@"metadata"];
        }

        goto LABEL_17;
      }

      if (v18)
      {
        v20 = [(PKPaymentCredential *)v18 isPurchasedProductCredential];
        v21 = self->_paymentCredential;
        if (v20)
        {
          v19 = [(PKPaymentCredential *)v21 purchasedProductCredential];
          goto LABEL_12;
        }

        if (v21 && [(PKPaymentCredential *)v21 isFPANCredential])
        {
          v14 = [(PKPaymentCredential *)self->_paymentCredential fpanCredential];
          v24 = [v14 cardholderName];
          [v10 setObject:v24 forKeyedSubscript:@"name"];

          v15 = [v14 cardNumber];
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
  v27 = [v8 deviceData];
  v28 = [v27 primaryJSBLSequenceCounter];
  v29 = [v28 stringValue];

  v30 = [v29 dataUsingEncoding:4];
  v31 = [v30 hexEncoding];
  [v10 setObject:v31 forKeyedSubscript:@"jsblSequenceCounter"];

  if (v6)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __97__PKPaymentRequirementsRequest__secureCardDictionaryWithBuilder_includingDeviceScore_completion___block_invoke;
    v32[3] = &unk_1E79DB040;
    v33 = v10;
    v34 = v9;
    [(PKPaymentRequirementsRequest *)self _deviceScoreWithCompletion:v32];
  }

  else
  {
    (*(v9 + 2))(v9, v10);
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

- (void)_deviceScoreWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
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
      v10 = v4;
      [(PKODIAssessment *)v8 waitForAssessmentWithTimeout:1 startTimeoutFromAssessmentStart:0 continueBlock:v9];
    }

    else
    {
      (*(v4 + 2))(v4, 0, 0);
    }
  }
}

@end