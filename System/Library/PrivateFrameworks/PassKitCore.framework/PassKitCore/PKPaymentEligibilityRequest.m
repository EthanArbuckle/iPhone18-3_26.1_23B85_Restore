@interface PKPaymentEligibilityRequest
- (PKPaymentEligibilityRequest)initWithAddRequestConfiguration:(id)a3 addRequest:(id)a4;
- (PKPaymentEligibilityRequest)initWithCoder:(id)a3;
- (PKPaymentEligibilityRequest)initWithPaymentCredential:(id)a3;
- (PKPaymentEligibilityRequest)initWithSource:(int64_t)a3;
- (unint64_t)_requestHTTPMethod;
- (void)_updateRequestForRedirect:(id)a3 overrides:(id)a4 webService:(id)a5 withCompletion:(id)a6;
- (void)_updateRequestForRetry:(id)a3 retryFields:(id)a4 webService:(id)a5 withCompletion:(id)a6;
- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setPaymentCredential:(id)a3;
@end

@implementation PKPaymentEligibilityRequest

- (PKPaymentEligibilityRequest)initWithSource:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentEligibilityRequest;
  result = [(PKOverlayableWebServiceRequest *)&v5 init];
  if (result)
  {
    result->_source = a3;
  }

  return result;
}

- (PKPaymentEligibilityRequest)initWithPaymentCredential:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentEligibilityRequest *)self init];
  v6 = v5;
  if (v5)
  {
    [(PKPaymentEligibilityRequest *)v5 setPaymentCredential:v4];
    v7 = [v4 state];
    v8 = [v7 requirementsResponse];

    if (v8)
    {
      v9 = [v8 region];
      region = v6->_region;
      v6->_region = v9;
    }

    else
    {
      region = [v4 underlyingPaymentPass];
      v11 = [region passTypeIdentifier];
      v12 = v6->_region;
      v6->_region = v11;
    }
  }

  return v6;
}

- (PKPaymentEligibilityRequest)initWithAddRequestConfiguration:(id)a3 addRequest:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PKPaymentEligibilityRequest *)self initWithSource:2];
  if (v9)
  {
    v10 = [v8 encryptionVersion];
    [(PKPaymentEligibilityRequest *)v9 setEncryptionVersion:v10];

    v11 = [v8 encryptedPassData];
    [(PKPaymentEligibilityRequest *)v9 setEncryptedCardData:v11];

    v12 = [v8 publicKeyHash];
    [(PKPaymentEligibilityRequest *)v9 setPublicKeyHash:v12];

    v13 = [v8 ephemeralPublicKey];
    [(PKPaymentEligibilityRequest *)v9 setEphemeralPublicKey:v13];

    v14 = [v8 wrappedKey];
    [(PKPaymentEligibilityRequest *)v9 setWrappedKey:v14];

    v15 = [v8 issuerIdentifier];
    [(PKPaymentEligibilityRequest *)v9 setIssuerIdentifier:v15];

    v16 = [v8 hostApplicationIdentifier];
    [(PKPaymentEligibilityRequest *)v9 setHostApplicationIdentifier:v16];

    v17 = [v8 hostApplicationVersion];
    [(PKPaymentEligibilityRequest *)v9 setHostApplicationVersion:v17];

    v18 = [v8 FPInfo];
    [(PKPaymentEligibilityRequest *)v9 setFPInfo:v18];

    v19 = [v8 nonce];
    v20 = [v19 hexEncoding];
    [(PKPaymentEligibilityRequest *)v9 setNonce:v20];

    objc_storeStrong(&v9->_addPaymentPassRequestConfiguration, a3);
  }

  return v9;
}

- (PKPaymentEligibilityRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = PKPaymentEligibilityRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v50 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PKPaymentCredential"];
    paymentCredential = v5->_paymentCredential;
    v5->_paymentCredential = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productIdentifier"];
    productIdentifier = v5->_productIdentifier;
    v5->_productIdentifier = v8;

    v5->_cardholderNameInputMethod = [v4 decodeIntegerForKey:@"cardholderNameInputMethod"];
    v5->_primaryAccountNumberInputMethod = [v4 decodeIntegerForKey:@"primaryAccountNumberInputMethod"];
    v5->_expirationInputMethod = [v4 decodeIntegerForKey:@"expirationInputMethod"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuerIdentifier"];
    issuerIdentifier = v5->_issuerIdentifier;
    v5->_issuerIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostApplicationIdentifier"];
    hostApplicationIdentifier = v5->_hostApplicationIdentifier;
    v5->_hostApplicationIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostApplicationVersion"];
    hostApplicationVersion = v5->_hostApplicationVersion;
    v5->_hostApplicationVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FPInfo"];
    FPInfo = v5->_FPInfo;
    v5->_FPInfo = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionVersion"];
    encryptionVersion = v5->_encryptionVersion;
    v5->_encryptionVersion = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    v21 = [v20 pk_zString];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountNumber"];
    v24 = [v23 pk_zString];
    primaryAccountNumber = v5->_primaryAccountNumber;
    v5->_primaryAccountNumber = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiration"];
    v27 = [v26 pk_zString];
    expiration = v5->_expiration;
    v5->_expiration = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedCardData"];
    encryptedCardData = v5->_encryptedCardData;
    v5->_encryptedCardData = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wrappedKey"];
    wrappedKey = v5->_wrappedKey;
    v5->_wrappedKey = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonce"];
    nonce = v5->_nonce;
    v5->_nonce = v37;

    v5->_source = [v4 decodeIntegerForKey:@"source"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referrerIdentifier"];
    referrerIdentifier = v5->_referrerIdentifier;
    v5->_referrerIdentifier = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"addPaymentPassRequestConfiguration"];
    addPaymentPassRequestConfiguration = v5->_addPaymentPassRequestConfiguration;
    v5->_addPaymentPassRequestConfiguration = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tapToProvisionData"];
    tapToProvisionData = v5->_tapToProvisionData;
    v5->_tapToProvisionData = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessment"];
    odiAssessment = v5->_odiAssessment;
    v5->_odiAssessment = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"odiAssessmentVersion"];
    odiAssessmentVersion = v5->_odiAssessmentVersion;
    v5->_odiAssessmentVersion = v47;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPaymentEligibilityRequest;
  v4 = a3;
  [(PKOverlayableWebServiceRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_paymentCredential forKey:{@"paymentCredential", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_productIdentifier forKey:@"productIdentifier"];
  [v4 encodeInteger:self->_cardholderNameInputMethod forKey:@"cardholderNameInputMethod"];
  [v4 encodeInteger:self->_primaryAccountNumberInputMethod forKey:@"primaryAccountNumberInputMethod"];
  [v4 encodeInteger:self->_expirationInputMethod forKey:@"expirationInputMethod"];
  [v4 encodeObject:self->_issuerIdentifier forKey:@"issuerIdentifier"];
  [v4 encodeObject:self->_hostApplicationIdentifier forKey:@"hostApplicationIdentifier"];
  [v4 encodeObject:self->_hostApplicationVersion forKey:@"hostApplicationVersion"];
  [v4 encodeObject:self->_FPInfo forKey:@"FPInfo"];
  [v4 encodeObject:self->_encryptionVersion forKey:@"encryptionVersion"];
  [v4 encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [v4 encodeObject:self->_primaryAccountNumber forKey:@"primaryAccountNumber"];
  [v4 encodeObject:self->_expiration forKey:@"expiration"];
  [v4 encodeObject:self->_encryptedCardData forKey:@"encryptedCardData"];
  [v4 encodeObject:self->_publicKeyHash forKey:@"publicKeyHash"];
  [v4 encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
  [v4 encodeObject:self->_wrappedKey forKey:@"wrappedKey"];
  [v4 encodeObject:self->_nonce forKey:@"nonce"];
  [v4 encodeInteger:self->_source forKey:@"source"];
  [v4 encodeObject:self->_referrerIdentifier forKey:@"referrerIdentifier"];
  [v4 encodeObject:self->_addPaymentPassRequestConfiguration forKey:@"addPaymentPassRequestConfiguration"];
  [v4 encodeObject:self->_tapToProvisionData forKey:@"tapToProvisionData"];
  [v4 encodeObject:self->_odiAssessment forKey:@"odiAssessment"];
  [v4 encodeObject:self->_odiAssessmentVersion forKey:@"odiAssessmentVersion"];
}

- (void)setPaymentCredential:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_paymentCredential, a3);
  if ([v10 isContactlessProductCredential])
  {
    v5 = 3;
LABEL_13:
    self->_source = v5;
    goto LABEL_14;
  }

  if ([v10 isIdentityCredential])
  {
    v5 = 6;
    goto LABEL_13;
  }

  if ([v10 isShareableCredential])
  {
    v6 = [v10 shareableCredential];
    v7 = [v6 source];

    if ((v7 - 1) >= 0xB)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    self->_source = v8;
    goto LABEL_14;
  }

  if (([v10 isDigitalIssuanceProductCredential] & 1) != 0 || objc_msgSend(v10, "isPurchasedProductCredential"))
  {
    v5 = 4;
    goto LABEL_13;
  }

  if ([v10 isFPANCredential])
  {
    v5 = 8;
    goto LABEL_13;
  }

  if (![v10 isAppleBalanceCredential])
  {
    v5 = 1;
    goto LABEL_13;
  }

  v9 = [v10 appleBalanceCredential];
  self->_source = [v9 eligibilitySource];

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
    v4 = [(PKPaymentCredential *)self->_paymentCredential identityCredential];
    v5 = [v4 hasExistingPassInformation];

    if (v5)
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

- (void)_urlRequestWithBuilder:(id)a3 webService:(id)a4 completion:(id)a5
{
  v142[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PKPaymentEligibilityRequest *)self _requestHTTPMethod]!= 1)
  {
    v134[0] = @"devices";
    v18 = [v8 deviceID];
    v134[1] = v18;
    v134[2] = @"cards";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:3];

    v20 = [v8 brokerURL];
    v21 = [v8 appleAccountInformation];
    v22 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v20 endpointComponents:v19 queryParameters:0 appleAccountInformation:v21];

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
    v127 = v9;
    if (encryptedCardData)
    {
      [(NSData *)encryptedCardData base64EncodedDataWithOptions:0];
      v129 = v128 = 0;
      goto LABEL_66;
    }

    paymentCredential = self->_paymentCredential;
    if (paymentCredential)
    {
      v30 = [(PKPaymentCredential *)paymentCredential isContactlessProductCredential];
      paymentCredential = self->_paymentCredential;
      if (v30)
      {
        v31 = [(PKPaymentCredential *)paymentCredential contactlessProductCredential];
        v32 = [v31 productIdentifier];

        if (v32)
        {
          v33 = [v31 productIdentifier];
          productIdentifier = self->_productIdentifier;
          self->_productIdentifier = v33;
        }

        v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v36 = [v31 cardSessionToken];
        if (v36)
        {
          [v35 setObject:v36 forKeyedSubscript:@"cardSessionToken"];
        }

        v128 = v35;

        goto LABEL_55;
      }

      if (paymentCredential)
      {
        v52 = [(PKPaymentCredential *)paymentCredential isDigitalIssuanceProductCredential];
        paymentCredential = self->_paymentCredential;
        if (v52)
        {
          v53 = [(PKPaymentCredential *)paymentCredential digitalIssuanceProductCredential];
LABEL_46:
          v60 = v53;
          v61 = [v53 productIdentifier];

          if (v61)
          {
            v62 = [v60 productIdentifier];
            v63 = self->_productIdentifier;
            self->_productIdentifier = v62;
          }

          v64 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v130 = v60;
          v65 = [v60 purchase];
          v66 = [v65 identifier];
          v67 = [v65 partnerMetadata];
          if (v66)
          {
            [v64 setObject:v66 forKeyedSubscript:@"provisioningToken"];
          }

          if (v67)
          {
            [v64 setObject:v67 forKeyedSubscript:@"metadata"];
          }

          v128 = v64;

          goto LABEL_65;
        }

        if (paymentCredential)
        {
          v59 = [(PKPaymentCredential *)paymentCredential isPurchasedProductCredential];
          paymentCredential = self->_paymentCredential;
          if (v59)
          {
            v53 = [(PKPaymentCredential *)paymentCredential purchasedProductCredential];
            goto LABEL_46;
          }
        }
      }
    }

    if ([(PKPaymentCredential *)paymentCredential isFPANCredential])
    {
      v68 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v69 = [(PKPaymentCredential *)self->_paymentCredential fpanCredential];
      v70 = [v69 cardNumber];
      [v68 setObject:v70 forKeyedSubscript:@"primaryAccountNumber"];

      v71 = [v69 expiration];
      [v68 setObject:v71 forKeyedSubscript:@"expiration"];

      v72 = [v69 cardholderName];
      v128 = v68;
      [v68 setObject:v72 forKeyedSubscript:@"name"];
    }

    else
    {
      v73 = self->_paymentCredential;
      if (v73)
      {
        if ([(PKPaymentCredential *)v73 isAppleBalanceCredential])
        {
          v74 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v75 = [(PKPaymentCredential *)self->_paymentCredential appleBalanceCredential];
          v76 = [v75 product];
          v77 = [v76 productIdentifier];
          v78 = self->_productIdentifier;
          self->_productIdentifier = v77;

          v79 = [(PKPaymentCredential *)self->_paymentCredential credentialType];
          if (v79)
          {
            v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v79];
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
            v92 = [(PKPaymentTapToProvisionData *)self->_tapToProvisionData dictionaryRepresentation];
            [v24 setObject:v92 forKeyedSubscript:@"tapToProvisionCardData"];

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

            v101 = [(PKPaymentCredential *)v99 isShareableCredential];
            v102 = self->_paymentCredential;
            if (v101)
            {
              v103 = [(PKPaymentCredential *)v102 shareableCredential];
              v104 = [v103 encryptedProvisioningTarget];

              if (v104)
              {
                v105 = [v103 encryptedProvisioningTarget];
                v106 = [v105 asWebServiceDictionary];
                [v24 addEntriesFromDictionary:v106];
              }

              else
              {
                v105 = [v103 sharingInstanceIdentifier];
                [v24 setObject:v105 forKeyedSubscript:@"sharingInstanceIdentifier"];
              }

              v111 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v103, "isBackgroundProvisioning")}];
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
                  v116 = [v8 deviceData];
                  v117 = [v116 primaryJSBLSequenceCounter];
                  v118 = [v117 copy];

                  v9 = v127;
                  if (v118)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v119 = [v118 stringValue];
                      v120 = [v119 dataUsingEncoding:4];
                      v121 = [v120 hexEncoding];
                      [v128 setObject:v121 forKeyedSubscript:@"jsblSequenceCounter"];

                      v9 = v127;
                    }
                  }

                  [v128 setObject:self->_odiAssessment forKeyedSubscript:@"deviceScore"];
                  v115 = v128;
                  [v128 setObject:self->_odiAssessmentVersion forKeyedSubscript:@"deviceScoreVersion"];
                  [v8 configureOverlayRequest:self urlRequest:v22 secureDictionary:v128 dictionary:v24];

                  v100 = v129;
                }

                else
                {
                  v9 = v127;
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
                    v125 = [(NSData *)self->_publicKeyHash hexEncoding];
                    [v24 setObject:v125 forKeyedSubscript:@"publicKeyHash"];

                    v115 = 0;
                  }

                  [v8 configureOverlayRequest:self urlRequest:v22 secureDictionary:0 dictionary:v24];
                }

                v131[0] = MEMORY[0x1E69E9820];
                v131[1] = 3221225472;
                v131[2] = __76__PKPaymentEligibilityRequest__urlRequestWithBuilder_webService_completion___block_invoke;
                v131[3] = &unk_1E79DAF50;
                v132 = v10;
                [(PKPaymentWebServiceRequest *)self _signRequest:v22 webService:v9 completion:v131];

                goto LABEL_135;
              }

              v103 = [(PKPaymentCredential *)self->_paymentCredential identityCredential];
              encryptedProvisioningTarget = self->_encryptedProvisioningTarget;
              if (encryptedProvisioningTarget)
              {
                v108 = [(PKEncryptedPushProvisioningTarget *)encryptedProvisioningTarget asWebServiceDictionary];
                [v24 addEntriesFromDictionary:v108];
              }

              v109 = [v103 passSerialNumber];
              [v24 setObject:v109 forKeyedSubscript:@"passSerial"];

              v110 = [v103 passTypeIdentifier];
              [v24 setObject:v110 forKeyedSubscript:@"passTypeIdentifier"];

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
    v12 = [(PKPaymentCredential *)v11 isRemoteCredential];
    v13 = self->_paymentCredential;
    if (v12)
    {
      v14 = [(PKPaymentCredential *)v13 remoteCredential];
      v142[0] = @"devices";
      v15 = [v8 deviceID];
      v142[1] = v15;
      v142[2] = @"cards";
      v16 = [v14 identifier];
      v142[3] = v16;
      v142[4] = @"eligibility";
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:5];
      goto LABEL_27;
    }

    v37 = [(PKPaymentCredential *)v13 isAccountCredential];
    v38 = self->_paymentCredential;
    if (v37)
    {
      v14 = [(PKPaymentCredential *)v38 accountCredential];
      v141[0] = @"devices";
      v15 = [v8 deviceID];
      v141[1] = v15;
      v141[2] = @"cards";
      v16 = [v14 passDetailsResponse];
      [v16 provisioningIdentifier];
      v40 = v39 = v9;
      v141[3] = v40;
      v141[4] = @"eligibility";
      v41 = MEMORY[0x1E695DEC8];
      v42 = v141;
    }

    else
    {
      v44 = [(PKPaymentCredential *)v38 isLocalPassCredential];
      v45 = self->_paymentCredential;
      if (v44)
      {
        v14 = [(PKPaymentCredential *)v45 localPassCredential];
        v140[0] = @"devices";
        v15 = [v8 deviceID];
        v140[1] = v15;
        v140[2] = @"passes";
        v16 = [v14 passTypeIdentifier];
        v140[3] = v16;
        [v14 serialNumber];
        v40 = v39 = v9;
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

      v14 = [(PKPaymentCredential *)self->_paymentCredential peerPaymentCredential];
      v15 = [v14 passDetailsResponse];
      v139[0] = @"devices";
      v16 = [v8 deviceID];
      v139[1] = v16;
      v139[2] = @"cards";
      [v15 provisioningIdentifier];
      v40 = v39 = v9;
      v139[3] = v40;
      v139[4] = @"eligibility";
      v41 = MEMORY[0x1E695DEC8];
      v42 = v139;
    }

    v43 = 5;
LABEL_26:
    v17 = [v41 arrayWithObjects:v42 count:v43];

    v9 = v39;
LABEL_27:

    if (v17)
    {
      v46 = [v8 brokerURL];
      v47 = [v8 appleAccountInformation];
      v48 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v46 endpointComponents:v17 queryParameters:0 appleAccountInformation:v47];

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

      if (v10)
      {
        v51 = [v48 copy];
        (*(v10 + 2))(v10, v51);
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

    (*(v10 + 2))(v10, 0);
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

  (*(v10 + 2))(v10, 0);
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
  v19[2] = __92__PKPaymentEligibilityRequest__updateRequestForRetry_retryFields_webService_withCompletion___block_invoke;
  v19[3] = &unk_1E79DAF50;
  v20 = v10;
  v18 = v10;
  [(PKPaymentWebServiceRequest *)self _signRequest:v12 webService:v11 completion:v19];
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

- (void)_updateRequestForRedirect:(id)a3 overrides:(id)a4 webService:(id)a5 withCompletion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __93__PKPaymentEligibilityRequest__updateRequestForRedirect_overrides_webService_withCompletion___block_invoke;
  v15[3] = &unk_1E79DAFC8;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v14.receiver = self;
  v14.super_class = PKPaymentEligibilityRequest;
  v12 = v11;
  v13 = v10;
  [(PKOverlayableWebServiceRequest *)&v14 _updateRequestForRedirect:a3 overrides:a4 webService:v13 withCompletion:v15];
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