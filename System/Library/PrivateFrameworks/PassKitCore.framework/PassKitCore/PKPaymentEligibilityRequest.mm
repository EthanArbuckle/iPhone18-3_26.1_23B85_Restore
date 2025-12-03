@interface PKPaymentEligibilityRequest
- (PKPaymentEligibilityRequest)initWithAddRequestConfiguration:(id)configuration addRequest:(id)request;
- (PKPaymentEligibilityRequest)initWithCoder:(id)coder;
- (PKPaymentEligibilityRequest)initWithPaymentCredential:(id)credential;
- (PKPaymentEligibilityRequest)initWithSource:(int64_t)source;
- (unint64_t)_requestHTTPMethod;
- (void)_updateRequestForRedirect:(id)redirect overrides:(id)overrides webService:(id)service withCompletion:(id)completion;
- (void)_updateRequestForRetry:(id)retry retryFields:(id)fields webService:(id)service withCompletion:(id)completion;
- (void)_urlRequestWithBuilder:(id)builder webService:(id)service completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)setPaymentCredential:(id)credential;
@end

@implementation PKPaymentEligibilityRequest

- (PKPaymentEligibilityRequest)initWithSource:(int64_t)source
{
  v5.receiver = self;
  v5.super_class = PKPaymentEligibilityRequest;
  result = [(PKOverlayableWebServiceRequest *)&v5 init];
  if (result)
  {
    result->_source = source;
  }

  return result;
}

- (PKPaymentEligibilityRequest)initWithPaymentCredential:(id)credential
{
  credentialCopy = credential;
  v5 = [(PKPaymentEligibilityRequest *)self init];
  v6 = v5;
  if (v5)
  {
    [(PKPaymentEligibilityRequest *)v5 setPaymentCredential:credentialCopy];
    state = [credentialCopy state];
    requirementsResponse = [state requirementsResponse];

    if (requirementsResponse)
    {
      region = [requirementsResponse region];
      region = v6->_region;
      v6->_region = region;
    }

    else
    {
      region = [credentialCopy underlyingPaymentPass];
      passTypeIdentifier = [region passTypeIdentifier];
      v12 = v6->_region;
      v6->_region = passTypeIdentifier;
    }
  }

  return v6;
}

- (PKPaymentEligibilityRequest)initWithAddRequestConfiguration:(id)configuration addRequest:(id)request
{
  configurationCopy = configuration;
  requestCopy = request;
  v9 = [(PKPaymentEligibilityRequest *)self initWithSource:2];
  if (v9)
  {
    encryptionVersion = [requestCopy encryptionVersion];
    [(PKPaymentEligibilityRequest *)v9 setEncryptionVersion:encryptionVersion];

    encryptedPassData = [requestCopy encryptedPassData];
    [(PKPaymentEligibilityRequest *)v9 setEncryptedCardData:encryptedPassData];

    publicKeyHash = [requestCopy publicKeyHash];
    [(PKPaymentEligibilityRequest *)v9 setPublicKeyHash:publicKeyHash];

    ephemeralPublicKey = [requestCopy ephemeralPublicKey];
    [(PKPaymentEligibilityRequest *)v9 setEphemeralPublicKey:ephemeralPublicKey];

    wrappedKey = [requestCopy wrappedKey];
    [(PKPaymentEligibilityRequest *)v9 setWrappedKey:wrappedKey];

    issuerIdentifier = [requestCopy issuerIdentifier];
    [(PKPaymentEligibilityRequest *)v9 setIssuerIdentifier:issuerIdentifier];

    hostApplicationIdentifier = [requestCopy hostApplicationIdentifier];
    [(PKPaymentEligibilityRequest *)v9 setHostApplicationIdentifier:hostApplicationIdentifier];

    hostApplicationVersion = [requestCopy hostApplicationVersion];
    [(PKPaymentEligibilityRequest *)v9 setHostApplicationVersion:hostApplicationVersion];

    fPInfo = [requestCopy FPInfo];
    [(PKPaymentEligibilityRequest *)v9 setFPInfo:fPInfo];

    nonce = [requestCopy nonce];
    hexEncoding = [nonce hexEncoding];
    [(PKPaymentEligibilityRequest *)v9 setNonce:hexEncoding];

    objc_storeStrong(&v9->_addPaymentPassRequestConfiguration, configuration);
  }

  return v9;
}

- (PKPaymentEligibilityRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v50.receiver = self;
  v50.super_class = PKPaymentEligibilityRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v50 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PKPaymentCredential"];
    paymentCredential = v5->_paymentCredential;
    v5->_paymentCredential = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v8;

    v5->_cardholderNameInputMethod = [coderCopy decodeIntegerForKey:@"cardholderNameInputMethod"];
    v5->_primaryAccountNumberInputMethod = [coderCopy decodeIntegerForKey:@"primaryAccountNumberInputMethod"];
    v5->_expirationInputMethod = [coderCopy decodeIntegerForKey:@"expirationInputMethod"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerIdentifier"];
    issuerIdentifier = v5->_issuerIdentifier;
    v5->_issuerIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostApplicationIdentifier"];
    hostApplicationIdentifier = v5->_hostApplicationIdentifier;
    v5->_hostApplicationIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostApplicationVersion"];
    hostApplicationVersion = v5->_hostApplicationVersion;
    v5->_hostApplicationVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FPInfo"];
    FPInfo = v5->_FPInfo;
    v5->_FPInfo = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionVersion"];
    encryptionVersion = v5->_encryptionVersion;
    v5->_encryptionVersion = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    pk_zString = [v20 pk_zString];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = pk_zString;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountNumber"];
    pk_zString2 = [v23 pk_zString];
    primaryAccountNumber = v5->_primaryAccountNumber;
    v5->_primaryAccountNumber = pk_zString2;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    pk_zString3 = [v26 pk_zString];
    expiration = v5->_expiration;
    v5->_expiration = pk_zString3;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedCardData"];
    encryptedCardData = v5->_encryptedCardData;
    v5->_encryptedCardData = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappedKey"];
    wrappedKey = v5->_wrappedKey;
    v5->_wrappedKey = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v37;

    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referrerIdentifier"];
    referrerIdentifier = v5->_referrerIdentifier;
    v5->_referrerIdentifier = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"addPaymentPassRequestConfiguration"];
    addPaymentPassRequestConfiguration = v5->_addPaymentPassRequestConfiguration;
    v5->_addPaymentPassRequestConfiguration = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tapToProvisionData"];
    tapToProvisionData = v5->_tapToProvisionData;
    v5->_tapToProvisionData = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessmentVersion"];
    odiAssessmentVersion = v5->_odiAssessmentVersion;
    v5->_odiAssessmentVersion = v47;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPaymentEligibilityRequest;
  coderCopy = coder;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_paymentCredential forKey:{@"paymentCredential", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_productIdentifier forKey:@"productIdentifier"];
  [coderCopy encodeInteger:self->_cardholderNameInputMethod forKey:@"cardholderNameInputMethod"];
  [coderCopy encodeInteger:self->_primaryAccountNumberInputMethod forKey:@"primaryAccountNumberInputMethod"];
  [coderCopy encodeInteger:self->_expirationInputMethod forKey:@"expirationInputMethod"];
  [coderCopy encodeObject:self->_issuerIdentifier forKey:@"issuerIdentifier"];
  [coderCopy encodeObject:self->_hostApplicationIdentifier forKey:@"hostApplicationIdentifier"];
  [coderCopy encodeObject:self->_hostApplicationVersion forKey:@"hostApplicationVersion"];
  [coderCopy encodeObject:self->_FPInfo forKey:@"FPInfo"];
  [coderCopy encodeObject:self->_encryptionVersion forKey:@"encryptionVersion"];
  [coderCopy encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [coderCopy encodeObject:self->_primaryAccountNumber forKey:@"primaryAccountNumber"];
  [coderCopy encodeObject:self->_expiration forKey:@"expiration"];
  [coderCopy encodeObject:self->_encryptedCardData forKey:@"encryptedCardData"];
  [coderCopy encodeObject:self->_publicKeyHash forKey:@"publicKeyHash"];
  [coderCopy encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
  [coderCopy encodeObject:self->_wrappedKey forKey:@"wrappedKey"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonce"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeObject:self->_referrerIdentifier forKey:@"referrerIdentifier"];
  [coderCopy encodeObject:self->_addPaymentPassRequestConfiguration forKey:@"addPaymentPassRequestConfiguration"];
  [coderCopy encodeObject:self->_tapToProvisionData forKey:@"tapToProvisionData"];
  [coderCopy encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [coderCopy encodeObject:self->_odiAssessmentVersion forKey:@"odiAssessmentVersion"];
}

- (void)setPaymentCredential:(id)credential
{
  credentialCopy = credential;
  objc_storeStrong(&self->_paymentCredential, credential);
  if ([credentialCopy isContactlessProductCredential])
  {
    v5 = 3;
LABEL_13:
    self->_source = v5;
    goto LABEL_14;
  }

  if ([credentialCopy isIdentityCredential])
  {
    v5 = 6;
    goto LABEL_13;
  }

  if ([credentialCopy isShareableCredential])
  {
    shareableCredential = [credentialCopy shareableCredential];
    source = [shareableCredential source];

    if ((source - 1) >= 0xB)
    {
      v8 = 1;
    }

    else
    {
      v8 = source;
    }

    self->_source = v8;
    goto LABEL_14;
  }

  if (([credentialCopy isDigitalIssuanceProductCredential] & 1) != 0 || objc_msgSend(credentialCopy, "isPurchasedProductCredential"))
  {
    v5 = 4;
    goto LABEL_13;
  }

  if ([credentialCopy isFPANCredential])
  {
    v5 = 8;
    goto LABEL_13;
  }

  if (![credentialCopy isAppleBalanceCredential])
  {
    v5 = 1;
    goto LABEL_13;
  }

  appleBalanceCredential = [credentialCopy appleBalanceCredential];
  self->_source = [appleBalanceCredential eligibilitySource];

LABEL_14:
}

- (unint64_t)_requestHTTPMethod
{
  paymentCredential = self->_paymentCredential;
  if (!paymentCredential)
  {
    return 2;
  }

  if ([(PKPaymentCredential *)paymentCredential isIdentityCredential])
  {
    identityCredential = [(PKPaymentCredential *)self->_paymentCredential identityCredential];
    hasExistingPassInformation = [identityCredential hasExistingPassInformation];

    if (hasExistingPassInformation)
    {
      return 2;
    }
  }

  if ([(PKPaymentCredential *)self->_paymentCredential isContactlessProductCredential]|| [(PKPaymentCredential *)self->_paymentCredential isDigitalIssuanceProductCredential]|| [(PKPaymentCredential *)self->_paymentCredential isPurchasedProductCredential]|| [(PKPaymentCredential *)self->_paymentCredential isShareableCredential]|| [(PKPaymentCredential *)self->_paymentCredential isFPANCredential]|| [(PKPaymentCredential *)self->_paymentCredential isAppleBalanceCredential]|| [(PKPaymentCredential *)self->_paymentCredential isIdentityCredential])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_urlRequestWithBuilder:(id)builder webService:(id)service completion:(id)completion
{
  v142[5] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  serviceCopy = service;
  completionCopy = completion;
  if ([(PKPaymentEligibilityRequest *)self _requestHTTPMethod]!= 1)
  {
    v134[0] = @"devices";
    deviceID = [builderCopy deviceID];
    v134[1] = deviceID;
    v134[2] = @"cards";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:3];

    brokerURL = [builderCopy brokerURL];
    appleAccountInformation = [builderCopy appleAccountInformation];
    v22 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL endpointComponents:v19 queryParameters:0 appleAccountInformation:appleAccountInformation];

    [v22 setHTTPMethod:@"POST"];
    [v22 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
    referrerIdentifier = self->_referrerIdentifier;
    if (referrerIdentifier)
    {
      [v22 setValue:referrerIdentifier forHTTPHeaderField:@"x-apple-referrer-identifier"];
    }

    if (PKIdentityEnableAntiCloning())
    {
      [v22 setValue:@"true" forHTTPHeaderField:@"x-apple-anti-cloning-enable"];
    }

    v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
    encryptedCardData = self->_encryptedCardData;
    v127 = serviceCopy;
    if (encryptedCardData)
    {
      [(NSData *)encryptedCardData base64EncodedDataWithOptions:0];
      v129 = v128 = 0;
      goto LABEL_66;
    }

    paymentCredential = self->_paymentCredential;
    if (paymentCredential)
    {
      isContactlessProductCredential = [(PKPaymentCredential *)paymentCredential isContactlessProductCredential];
      paymentCredential = self->_paymentCredential;
      if (isContactlessProductCredential)
      {
        contactlessProductCredential = [(PKPaymentCredential *)paymentCredential contactlessProductCredential];
        productIdentifier = [contactlessProductCredential productIdentifier];

        if (productIdentifier)
        {
          productIdentifier2 = [contactlessProductCredential productIdentifier];
          productIdentifier = self->_productIdentifier;
          self->_productIdentifier = productIdentifier2;
        }

        v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
        cardSessionToken = [contactlessProductCredential cardSessionToken];
        if (cardSessionToken)
        {
          [v35 setObject:cardSessionToken forKeyedSubscript:@"cardSessionToken"];
        }

        v128 = v35;

        goto LABEL_55;
      }

      if (paymentCredential)
      {
        isDigitalIssuanceProductCredential = [(PKPaymentCredential *)paymentCredential isDigitalIssuanceProductCredential];
        paymentCredential = self->_paymentCredential;
        if (isDigitalIssuanceProductCredential)
        {
          digitalIssuanceProductCredential = [(PKPaymentCredential *)paymentCredential digitalIssuanceProductCredential];
LABEL_46:
          v60 = digitalIssuanceProductCredential;
          productIdentifier3 = [digitalIssuanceProductCredential productIdentifier];

          if (productIdentifier3)
          {
            productIdentifier4 = [v60 productIdentifier];
            v63 = self->_productIdentifier;
            self->_productIdentifier = productIdentifier4;
          }

          v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v130 = v60;
          purchase = [v60 purchase];
          identifier = [purchase identifier];
          partnerMetadata = [purchase partnerMetadata];
          if (identifier)
          {
            [v64 setObject:identifier forKeyedSubscript:@"provisioningToken"];
          }

          if (partnerMetadata)
          {
            [v64 setObject:partnerMetadata forKeyedSubscript:@"metadata"];
          }

          v128 = v64;

          goto LABEL_65;
        }

        if (paymentCredential)
        {
          isPurchasedProductCredential = [(PKPaymentCredential *)paymentCredential isPurchasedProductCredential];
          paymentCredential = self->_paymentCredential;
          if (isPurchasedProductCredential)
          {
            digitalIssuanceProductCredential = [(PKPaymentCredential *)paymentCredential purchasedProductCredential];
            goto LABEL_46;
          }
        }
      }
    }

    if ([(PKPaymentCredential *)paymentCredential isFPANCredential])
    {
      v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
      fpanCredential = [(PKPaymentCredential *)self->_paymentCredential fpanCredential];
      cardNumber = [fpanCredential cardNumber];
      [v68 setObject:cardNumber forKeyedSubscript:@"primaryAccountNumber"];

      expiration = [fpanCredential expiration];
      [v68 setObject:expiration forKeyedSubscript:@"expiration"];

      cardholderName = [fpanCredential cardholderName];
      v128 = v68;
      [v68 setObject:cardholderName forKeyedSubscript:@"name"];
    }

    else
    {
      v73 = self->_paymentCredential;
      if (v73)
      {
        if ([(PKPaymentCredential *)v73 isAppleBalanceCredential])
        {
          v74 = objc_alloc_init(MEMORY[0x1E695DF90]);
          appleBalanceCredential = [(PKPaymentCredential *)self->_paymentCredential appleBalanceCredential];
          product = [appleBalanceCredential product];
          productIdentifier5 = [product productIdentifier];
          v78 = self->_productIdentifier;
          self->_productIdentifier = productIdentifier5;

          credentialType = [(PKPaymentCredential *)self->_paymentCredential credentialType];
          if (credentialType)
          {
            v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", credentialType];
            [v74 setObject:v80 forKeyedSubscript:@"cardTypeCode"];
          }

          v128 = v74;

          goto LABEL_65;
        }

        v73 = self->_paymentCredential;
      }

      if ([(PKPaymentCredential *)v73 isShareableCredential]|| [(PKPaymentCredential *)self->_paymentCredential isIdentityCredential])
      {
        v128 = 0;
LABEL_65:
        v129 = 0;
LABEL_66:
        v81 = [MEMORY[0x1E696AD98] numberWithInteger:self->_source];
        [v24 setObject:v81 forKeyedSubscript:@"source"];

        [v24 setObject:self->_issuerIdentifier forKeyedSubscript:@"issuerIdentifier"];
        v82 = self->_productIdentifier;
        if (v82)
        {
          [v24 setObject:v82 forKeyedSubscript:@"productIdentifier"];
        }

        primaryAccountNumberInputMethod = self->_primaryAccountNumberInputMethod;
        v84 = @"unknown";
        if (primaryAccountNumberInputMethod > 1)
        {
          if (primaryAccountNumberInputMethod == 2)
          {
            v84 = @"camera";
          }

          if (primaryAccountNumberInputMethod == 3)
          {
            v85 = @"tapToProvision";
          }

          else
          {
            v85 = v84;
          }
        }

        else
        {
          if (!primaryAccountNumberInputMethod)
          {
            goto LABEL_79;
          }

          if (primaryAccountNumberInputMethod == 1)
          {
            v85 = @"manual";
          }

          else
          {
            v85 = @"unknown";
          }
        }

        [v24 setObject:v85 forKeyedSubscript:@"panInputMethod"];
LABEL_79:
        expirationInputMethod = self->_expirationInputMethod;
        v87 = @"unknown";
        if (expirationInputMethod > 1)
        {
          if (expirationInputMethod == 2)
          {
            v87 = @"camera";
          }

          if (expirationInputMethod == 3)
          {
            v88 = @"tapToProvision";
          }

          else
          {
            v88 = v87;
          }
        }

        else
        {
          if (!expirationInputMethod)
          {
            goto LABEL_90;
          }

          if (expirationInputMethod == 1)
          {
            v88 = @"manual";
          }

          else
          {
            v88 = @"unknown";
          }
        }

        [v24 setObject:v88 forKeyedSubscript:@"expirationInputMethod"];
LABEL_90:
        cardholderNameInputMethod = self->_cardholderNameInputMethod;
        v90 = @"unknown";
        if (cardholderNameInputMethod > 1)
        {
          if (cardholderNameInputMethod == 2)
          {
            v90 = @"camera";
          }

          if (cardholderNameInputMethod == 3)
          {
            v91 = @"tapToProvision";
          }

          else
          {
            v91 = v90;
          }
        }

        else
        {
          if (!cardholderNameInputMethod)
          {
LABEL_101:
            dictionaryRepresentation = [(PKPaymentTapToProvisionData *)self->_tapToProvisionData dictionaryRepresentation];
            [v24 setObject:dictionaryRepresentation forKeyedSubscript:@"tapToProvisionCardData"];

            if (self->_hostApplicationIdentifier || self->_hostApplicationVersion)
            {
              v93 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
              v94 = v93;
              hostApplicationIdentifier = self->_hostApplicationIdentifier;
              if (hostApplicationIdentifier)
              {
                [v93 setObject:hostApplicationIdentifier forKeyedSubscript:@"identifier"];
              }

              hostApplicationVersion = self->_hostApplicationVersion;
              if (hostApplicationVersion)
              {
                [v94 setObject:hostApplicationVersion forKeyedSubscript:@"version"];
              }

              [v24 setObject:v94 forKeyedSubscript:@"hostApplication"];
            }

            v97 = [(NSData *)self->_FPInfo base64EncodedStringWithOptions:0];
            [v24 setObject:v97 forKeyedSubscript:@"fpai"];

            v98 = [(NSData *)self->_wrappedKey base64EncodedStringWithOptions:0];
            [v24 setObject:v98 forKeyedSubscript:@"wrappedKey"];

            [v24 setObject:self->_nonce forKeyedSubscript:@"nonce"];
            v99 = self->_paymentCredential;
            v100 = v129;
            if (!v99)
            {
              goto LABEL_123;
            }

            isShareableCredential = [(PKPaymentCredential *)v99 isShareableCredential];
            v102 = self->_paymentCredential;
            if (isShareableCredential)
            {
              shareableCredential = [(PKPaymentCredential *)v102 shareableCredential];
              encryptedProvisioningTarget = [shareableCredential encryptedProvisioningTarget];

              if (encryptedProvisioningTarget)
              {
                encryptedProvisioningTarget2 = [shareableCredential encryptedProvisioningTarget];
                asWebServiceDictionary = [encryptedProvisioningTarget2 asWebServiceDictionary];
                [v24 addEntriesFromDictionary:asWebServiceDictionary];
              }

              else
              {
                encryptedProvisioningTarget2 = [shareableCredential sharingInstanceIdentifier];
                [v24 setObject:encryptedProvisioningTarget2 forKeyedSubscript:@"sharingInstanceIdentifier"];
              }

              v111 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(shareableCredential, "isBackgroundProvisioning")}];
              [v24 setObject:v111 forKeyedSubscript:@"backgroundProvisioning"];

              if ((self->_source | 4) == 5)
              {
                v112 = PKPairedOrPairingDevice();
                v113 = PKSerialNumberFromNRDevice(v112);

                if (v113)
                {
                  v133 = v113;
                  v114 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v133 count:1];
                  [v24 setObject:v114 forKeyedSubscript:@"companionDeviceSerialNumbers"];
                }
              }

              v100 = v129;
            }

            else
            {
              if (![(PKPaymentCredential *)v102 isIdentityCredential])
              {
LABEL_123:
                v115 = v128;
                if (v128)
                {
                  deviceData = [builderCopy deviceData];
                  primaryJSBLSequenceCounter = [deviceData primaryJSBLSequenceCounter];
                  v118 = [primaryJSBLSequenceCounter copy];

                  serviceCopy = v127;
                  if (v118)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      stringValue = [v118 stringValue];
                      v120 = [stringValue dataUsingEncoding:4];
                      hexEncoding = [v120 hexEncoding];
                      [v128 setObject:hexEncoding forKeyedSubscript:@"jsblSequenceCounter"];

                      serviceCopy = v127;
                    }
                  }

                  [v128 setObject:self->_odiAssessment forKeyedSubscript:@"deviceScore"];
                  v115 = v128;
                  [v128 setObject:self->_odiAssessmentVersion forKeyedSubscript:@"deviceScoreVersion"];
                  [builderCopy configureOverlayRequest:self urlRequest:v22 secureDictionary:v128 dictionary:v24];

                  v100 = v129;
                }

                else
                {
                  serviceCopy = v127;
                  if (v100)
                  {
                    v122 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v100 encoding:4];
                    [v24 setObject:v122 forKeyedSubscript:@"encryptedCardData"];
                    if (self->_encryptionVersion)
                    {
                      encryptionVersion = self->_encryptionVersion;
                    }

                    else
                    {
                      encryptionVersion = @"EV_ECC_v1-ASN.1";
                    }

                    [v24 setObject:encryptionVersion forKeyedSubscript:@"encryptionVersion"];
                    v124 = [(NSData *)self->_ephemeralPublicKey base64EncodedStringWithOptions:0];
                    [v24 setObject:v124 forKeyedSubscript:@"ephemeralPublicKey"];

                    v100 = v129;
                    hexEncoding2 = [(NSData *)self->_publicKeyHash hexEncoding];
                    [v24 setObject:hexEncoding2 forKeyedSubscript:@"publicKeyHash"];

                    v115 = 0;
                  }

                  [builderCopy configureOverlayRequest:self urlRequest:v22 secureDictionary:0 dictionary:v24];
                }

                v131[0] = MEMORY[0x1E69E9820];
                v131[1] = 3221225472;
                v131[2] = __76__PKPaymentEligibilityRequest__urlRequestWithBuilder_webService_completion___block_invoke;
                v131[3] = &unk_1E79DAF50;
                v132 = completionCopy;
                [(PKPaymentWebServiceRequest *)self _signRequest:v22 webService:serviceCopy completion:v131];

                goto LABEL_135;
              }

              shareableCredential = [(PKPaymentCredential *)self->_paymentCredential identityCredential];
              encryptedProvisioningTarget = self->_encryptedProvisioningTarget;
              if (encryptedProvisioningTarget)
              {
                asWebServiceDictionary2 = [(PKEncryptedPushProvisioningTarget *)encryptedProvisioningTarget asWebServiceDictionary];
                [v24 addEntriesFromDictionary:asWebServiceDictionary2];
              }

              passSerialNumber = [shareableCredential passSerialNumber];
              [v24 setObject:passSerialNumber forKeyedSubscript:@"passSerial"];

              passTypeIdentifier = [shareableCredential passTypeIdentifier];
              [v24 setObject:passTypeIdentifier forKeyedSubscript:@"passTypeIdentifier"];

              [v24 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"backgroundProvisioning"];
            }

            goto LABEL_123;
          }

          if (cardholderNameInputMethod == 1)
          {
            v91 = @"manual";
          }

          else
          {
            v91 = @"unknown";
          }
        }

        [v24 setObject:v91 forKeyedSubscript:@"nameInputMethod"];
        goto LABEL_101;
      }

      v126 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v126 setObject:self->_primaryAccountNumber forKeyedSubscript:@"primaryAccountNumber"];
      [v126 setObject:self->_expiration forKeyedSubscript:@"expiration"];
      v128 = v126;
      [v126 setObject:self->_cardholderName forKeyedSubscript:@"name"];
    }

LABEL_55:
    v129 = 0;
    goto LABEL_66;
  }

  v11 = self->_paymentCredential;
  if (v11)
  {
    isRemoteCredential = [(PKPaymentCredential *)v11 isRemoteCredential];
    v13 = self->_paymentCredential;
    if (isRemoteCredential)
    {
      remoteCredential = [(PKPaymentCredential *)v13 remoteCredential];
      v142[0] = @"devices";
      deviceID2 = [builderCopy deviceID];
      v142[1] = deviceID2;
      v142[2] = @"cards";
      identifier2 = [remoteCredential identifier];
      v142[3] = identifier2;
      v142[4] = @"eligibility";
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:5];
      goto LABEL_27;
    }

    isAccountCredential = [(PKPaymentCredential *)v13 isAccountCredential];
    v38 = self->_paymentCredential;
    if (isAccountCredential)
    {
      remoteCredential = [(PKPaymentCredential *)v38 accountCredential];
      v141[0] = @"devices";
      deviceID2 = [builderCopy deviceID];
      v141[1] = deviceID2;
      v141[2] = @"cards";
      identifier2 = [remoteCredential passDetailsResponse];
      [identifier2 provisioningIdentifier];
      v40 = v39 = serviceCopy;
      v141[3] = v40;
      v141[4] = @"eligibility";
      v41 = MEMORY[0x1E695DEC8];
      v42 = v141;
    }

    else
    {
      isLocalPassCredential = [(PKPaymentCredential *)v38 isLocalPassCredential];
      v45 = self->_paymentCredential;
      if (isLocalPassCredential)
      {
        remoteCredential = [(PKPaymentCredential *)v45 localPassCredential];
        v140[0] = @"devices";
        deviceID2 = [builderCopy deviceID];
        v140[1] = deviceID2;
        v140[2] = @"passes";
        identifier2 = [remoteCredential passTypeIdentifier];
        v140[3] = identifier2;
        [remoteCredential serialNumber];
        v40 = v39 = serviceCopy;
        v140[4] = v40;
        v140[5] = @"eligibility";
        v41 = MEMORY[0x1E695DEC8];
        v42 = v140;
        v43 = 6;
        goto LABEL_26;
      }

      if (![(PKPaymentCredential *)v45 isPeerPaymentCredential])
      {
        goto LABEL_39;
      }

      remoteCredential = [(PKPaymentCredential *)self->_paymentCredential peerPaymentCredential];
      deviceID2 = [remoteCredential passDetailsResponse];
      v139[0] = @"devices";
      identifier2 = [builderCopy deviceID];
      v139[1] = identifier2;
      v139[2] = @"cards";
      [deviceID2 provisioningIdentifier];
      v40 = v39 = serviceCopy;
      v139[3] = v40;
      v139[4] = @"eligibility";
      v41 = MEMORY[0x1E695DEC8];
      v42 = v139;
    }

    v43 = 5;
LABEL_26:
    v17 = [v41 arrayWithObjects:v42 count:v43];

    serviceCopy = v39;
LABEL_27:

    if (v17)
    {
      brokerURL2 = [builderCopy brokerURL];
      appleAccountInformation2 = [builderCopy appleAccountInformation];
      v48 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:brokerURL2 endpointComponents:v17 queryParameters:0 appleAccountInformation:appleAccountInformation2];

      [v48 setHTTPMethod:@"GET"];
      v49 = self->_referrerIdentifier;
      if (v49)
      {
        [v48 setValue:v49 forHTTPHeaderField:@"x-apple-referrer-identifier"];
      }

      passOwnershipToken = self->_passOwnershipToken;
      if (passOwnershipToken)
      {
        [v48 setValue:passOwnershipToken forHTTPHeaderField:@"X-Apple-Ownership-Token"];
      }

      if (completionCopy)
      {
        v51 = [v48 copy];
        (*(completionCopy + 2))(completionCopy, v51);
      }

LABEL_42:

      goto LABEL_135;
    }

LABEL_39:
    v54 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      *buf = 138412546;
      v136 = v56;
      v137 = 2112;
      v138 = v58;
      _os_log_impl(&dword_1AD337000, v54, OS_LOG_TYPE_DEFAULT, "Error: Not able to create a %@ for credential type: %@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
    v17 = 0;
    v48 = 0;
    goto LABEL_42;
  }

  v26 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    *buf = 138412290;
    v136 = v28;
    _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Error: Not able to create a %@ with nil credential", buf, 0xCu);
  }

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_135:
}

void __76__PKPaymentEligibilityRequest__urlRequestWithBuilder_webService_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 copy];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)_updateRequestForRetry:(id)retry retryFields:(id)fields webService:(id)service withCompletion:(id)completion
{
  completionCopy = completion;
  serviceCopy = service;
  retryCopy = retry;
  v13 = [fields PKStringForKey:@"nonce"];
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
  overlayParameters = [(PKOverlayableWebServiceRequest *)self overlayParameters];
  v17 = [v15 _HTTPBodyWithDictionary:overlayParameters];
  [retryCopy setHTTPBody:v17];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__PKPaymentEligibilityRequest__updateRequestForRetry_retryFields_webService_withCompletion___block_invoke;
  v19[3] = &unk_1E79DAF50;
  v20 = completionCopy;
  v18 = completionCopy;
  [(PKPaymentWebServiceRequest *)self _signRequest:retryCopy webService:serviceCopy completion:v19];
}

uint64_t __92__PKPaymentEligibilityRequest__updateRequestForRetry_retryFields_webService_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_updateRequestForRedirect:(id)redirect overrides:(id)overrides webService:(id)service withCompletion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PKPaymentEligibilityRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke;
  v15[3] = &unk_1E79DAFC8;
  v15[4] = self;
  v16 = serviceCopy;
  v17 = completionCopy;
  v14.receiver = self;
  v14.super_class = PKPaymentEligibilityRequest;
  v12 = completionCopy;
  v13 = serviceCopy;
  [(PKOverlayableWebServiceRequest *)&v14 _updateRequestForRedirect:redirect overrides:overrides webService:v13 withCompletion:v15];
}

void __93__PKPaymentEligibilityRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__PKPaymentEligibilityRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke_2;
  v5[3] = &unk_1E79DAF50;
  v6 = *(a1 + 48);
  [v3 _signRequest:a2 webService:v4 completion:v5];
}

uint64_t __93__PKPaymentEligibilityRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end