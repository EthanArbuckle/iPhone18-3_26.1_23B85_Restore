@interface PKPeerPaymentQuoteRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeerPaymentQuoteRequest:(id)request;
- (PKPeerPaymentQuoteRequest)init;
- (PKPeerPaymentQuoteRequest)initWithCoder:(id)coder;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithPaymentPass:(id)pass externalFundingSource:(unint64_t)source;
@end

@implementation PKPeerPaymentQuoteRequest

- (void)updateWithPaymentPass:(id)pass externalFundingSource:(unint64_t)source
{
  passCopy = pass;
  if (passCopy)
  {
    devicePrimaryInAppPaymentApplication = [passCopy devicePrimaryInAppPaymentApplication];
    dpanIdentifier = [devicePrimaryInAppPaymentApplication dpanIdentifier];
    [(PKPeerPaymentQuoteRequest *)self setDPANIdentifier:dpanIdentifier];

    primaryAccountIdentifier = [passCopy primaryAccountIdentifier];
    [(PKPeerPaymentQuoteRequest *)self setFPANIdentifier:primaryAccountIdentifier];

    if (self->_dpanIdentifier)
    {
      self->_externalFundingSource = source;
      devicePrimaryInAppPaymentApplication2 = [passCopy devicePrimaryInAppPaymentApplication];
      self->_paymentNetwork = [devicePrimaryInAppPaymentApplication2 paymentNetworkIdentifier];
      self->_paymentMethodType = [devicePrimaryInAppPaymentApplication2 paymentType];
      localizedDescription = [passCopy localizedDescription];
      paymentMethodDescription = self->_paymentMethodDescription;
      self->_paymentMethodDescription = localizedDescription;

      primaryAccountNumberSuffix = [passCopy primaryAccountNumberSuffix];
      paymentMethodSuffix = self->_paymentMethodSuffix;
      self->_paymentMethodSuffix = primaryAccountNumberSuffix;
    }
  }
}

- (PKPeerPaymentQuoteRequest)init
{
  v7.receiver = self;
  v7.super_class = PKPeerPaymentQuoteRequest;
  v2 = [(PKOverlayableWebServiceRequest *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    orderIdentifier = v2->_orderIdentifier;
    v2->_orderIdentifier = uUIDString;
  }

  return v2;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata
{
  v124 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  identifierCopy = identifier;
  scoreCopy = score;
  assessmentCopy = assessment;
  metadataCopy = metadata;
  v20 = metadataCopy;
  if (!lCopy)
  {
    v22 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v24 = NSStringFromClass(v25);
      *buf = 138543618;
      v121 = v24;
      v122 = 2082;
      v123 = "url";
      goto LABEL_145;
    }

LABEL_146:
    v104 = 0;
    goto LABEL_147;
  }

  if (!informationCopy)
  {
    v22 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v24 = NSStringFromClass(v26);
      *buf = 138543618;
      v121 = v24;
      v122 = 2082;
      v123 = "appleAccountInformation";
      goto LABEL_145;
    }

    goto LABEL_146;
  }

  if (!identifierCopy)
  {
    v22 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v24 = NSStringFromClass(v27);
      *buf = 138543618;
      v121 = v24;
      v122 = 2082;
      v123 = "deviceIdentifier";
      goto LABEL_145;
    }

    goto LABEL_146;
  }

  if (!metadataCopy)
  {
    v22 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v24 = NSStringFromClass(v28);
      *buf = 138543618;
      v121 = v24;
      v122 = 2082;
      v123 = "deviceMetadata";
      goto LABEL_145;
    }

    goto LABEL_146;
  }

  if (!self->_amount)
  {
    v22 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v24 = NSStringFromClass(v29);
      *buf = 138543618;
      v121 = v24;
      v122 = 2082;
      v123 = "_amount";
      goto LABEL_145;
    }

    goto LABEL_146;
  }

  if (!self->_currency)
  {
    v22 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v24 = NSStringFromClass(v30);
      *buf = 138543618;
      v121 = v24;
      v122 = 2082;
      v123 = "_currency";
      goto LABEL_145;
    }

    goto LABEL_146;
  }

  if (self->_externalFundingSource == 1 && !self->_dpanIdentifier)
  {
    v22 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_opt_class();
      v24 = NSStringFromClass(v42);
      *buf = 138543618;
      v121 = v24;
      v122 = 2082;
      v123 = "_dpanIdentifier";
      goto LABEL_145;
    }

    goto LABEL_146;
  }

  destination = self->_destination;
  if (destination == 2)
  {
    if (!self->_bankName)
    {
      v22 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v46 = objc_opt_class();
        v24 = NSStringFromClass(v46);
        *buf = 138543618;
        v121 = v24;
        v122 = 2082;
        v123 = "_bankName";
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    if (!self->_routingNumber)
    {
      v22 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v47 = objc_opt_class();
        v24 = NSStringFromClass(v47);
        *buf = 138543618;
        v121 = v24;
        v122 = 2082;
        v123 = "_routingNumber";
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    if (!self->_accountNumber)
    {
      v22 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v103 = objc_opt_class();
        v24 = NSStringFromClass(v103);
        *buf = 138543618;
        v121 = v24;
        v122 = 2082;
        v123 = "_accountNumber";
        goto LABEL_145;
      }

      goto LABEL_146;
    }
  }

  else if (destination == 1)
  {
    if (!self->_recipientIdentifier)
    {
      v22 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v45 = objc_opt_class();
        v24 = NSStringFromClass(v45);
        *buf = 138543618;
        v121 = v24;
        v122 = 2082;
        v123 = "_recipientIdentifier";
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    if (!self->_senderAddress)
    {
      v22 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138543618;
        v121 = v24;
        v122 = 2082;
        v123 = "_senderAddress";
LABEL_145:
        _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

        goto LABEL_146;
      }

      goto LABEL_146;
    }
  }

  v113 = assessmentCopy;
  v22 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B4748 queryParameters:0 appleAccountInformation:informationCopy];
  [v22 setHTTPMethod:@"POST"];
  [v22 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v112 = scoreCopy;
  if (scoreCopy)
  {
    hexEncoding = [scoreCopy hexEncoding];
    [dictionary setObject:hexEncoding forKey:@"deviceScore"];
  }

  if (v113)
  {
    [dictionary setObject:v113 forKey:@"odiAssessment"];
  }

  dictionaryRepresentation = [v20 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKey:@"deviceMetadata"];

  [dictionary setObject:identifierCopy forKey:@"deviceIdentifier"];
  [dictionary setObject:self->_orderIdentifier forKey:@"orderIdentifier"];
  amount = self->_amount;
  if (amount)
  {
    stringValue = [(NSDecimalNumber *)amount stringValue];
    [dictionary setObject:stringValue forKey:@"amount"];
  }

  currency = self->_currency;
  if (currency)
  {
    [dictionary setObject:currency forKey:@"currency"];
  }

  if (self->_externalFundingSource == 1)
  {
    v37 = @"dpan";
  }

  else
  {
    v37 = @"none";
  }

  v38 = v37;
  [dictionary setObject:v38 forKey:@"externalFundingSource"];

  v39 = self->_source - 1;
  if (v39 > 2)
  {
    v40 = @"unknown";
  }

  else
  {
    v40 = off_1E79E2EE0[v39];
  }

  [dictionary setObject:v40 forKey:@"source"];
  if (!self->_preserveCurrentBalance)
  {
    goto LABEL_63;
  }

  if (self->_externalFundingSource == 1)
  {
    if (self->_dpanIdentifier)
    {
      v41 = 1;
      goto LABEL_64;
    }

    v43 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    *buf = 0;
    v44 = "Ignoring request for preserveCurrentBalance because dpanIdentifier is missing";
    goto LABEL_61;
  }

  v43 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v44 = "Ignoring request for preserveCurrentBalance because the externalFundingSourceType is not DPAN";
LABEL_61:
    _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, v44, buf, 2u);
  }

LABEL_62:

LABEL_63:
  v41 = 0;
LABEL_64:
  v48 = [MEMORY[0x1E696AD98] numberWithBool:v41];
  [dictionary setObject:v48 forKey:@"preserveCurrentBalance"];

  v49 = self->_destination;
  if (v49)
  {
    v50 = PKPeerPaymentQuoteRequestDestinationTypeToString(v49);
    [dictionary setObject:v50 forKey:@"destination"];
  }

  v51 = self->_source - 1;
  if (v51 > 2)
  {
    v52 = @"unknown";
  }

  else
  {
    v52 = off_1E79E2EE0[v51];
  }

  [dictionary setObject:v52 forKey:@"source"];
  requestToken = self->_requestToken;
  if (requestToken && ![(PKPeerPaymentRequestToken *)requestToken isInformalRequestToken])
  {
    requestToken = [(PKPeerPaymentRequestToken *)self->_requestToken requestToken];
    [dictionary setObject:requestToken forKey:@"requestToken"];
  }

  context = self->_context;
  if (context > 1)
  {
    if (context == 3)
    {
      v56 = @"informalRequest";
      goto LABEL_85;
    }

    if (context == 2)
    {
      v56 = @"formalRequest";
      goto LABEL_85;
    }

LABEL_79:
    v56 = @"unknown";
    goto LABEL_85;
  }

  if (context)
  {
    if (context == 1)
    {
      v56 = @"user";
LABEL_85:
      [dictionary setObject:v56 forKey:@"context"];
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  v57 = self->_requestToken;
  if (v57)
  {
    isInformalRequestToken = [(PKPeerPaymentRequestToken *)v57 isInformalRequestToken];
    v59 = @"formalRequest";
    if (isInformalRequestToken)
    {
      v59 = @"informalRequest";
    }
  }

  else
  {
    v59 = @"user";
  }

  v106 = v59;
  [dictionary setObject:v106 forKey:@"context"];

LABEL_86:
  if (self->_externalFundingSource == 1 || self->_destination == 4)
  {
    dpanIdentifier = self->_dpanIdentifier;
    if (dpanIdentifier)
    {
      [dictionary setObject:dpanIdentifier forKey:@"dpanIdentifier"];
    }

    fpanIdentifier = self->_fpanIdentifier;
    if (fpanIdentifier)
    {
      [dictionary setObject:fpanIdentifier forKey:@"fpanIdentifier"];
    }

    paymentNetwork = self->_paymentNetwork;
    if (paymentNetwork)
    {
      v63 = PKPaymentNetworkNameForPaymentCredentialType(paymentNetwork);
      [dictionary setObject:v63 forKey:@"paymentNetwork"];
    }

    paymentMethodType = self->_paymentMethodType;
    if (paymentMethodType)
    {
      v65 = PKPaymentMethodTypeToString(paymentMethodType);
      [dictionary setObject:v65 forKey:@"paymentMethodType"];
    }

    paymentMethodDescription = self->_paymentMethodDescription;
    if (paymentMethodDescription)
    {
      [dictionary setObject:paymentMethodDescription forKey:@"paymentMethodDescription"];
    }

    paymentMethodSuffix = self->_paymentMethodSuffix;
    if (paymentMethodSuffix)
    {
      [dictionary setObject:paymentMethodSuffix forKey:@"paymentMethodSuffix"];
    }
  }

  v68 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasUpdatedPaymentMethod];
  [dictionary setObject:v68 forKey:@"hasUpdatedPaymentMethod"];

  paymentMode = self->_paymentMode;
  if (paymentMode)
  {
    v70 = PKPeerPaymentPaymentModeToString(paymentMode);
    [dictionary setObject:v70 forKey:@"paymentMode"];
  }

  v71 = self->_destination;
  if (v71 > 2)
  {
    scoreCopy = v112;
    if (v71 == 3)
    {
      threshold = self->_threshold;
      if (threshold)
      {
        [dictionary setObject:threshold forKey:@"threshold"];
      }

      recurringPaymentIdentifier = self->_recurringPaymentIdentifier;
      if (!recurringPaymentIdentifier)
      {
        goto LABEL_164;
      }

      v90 = @"recurringPaymentIdentifier";
    }

    else
    {
      if (v71 != 5)
      {
        goto LABEL_164;
      }

      deviceTapFlow = self->_deviceTapFlow;
      if (!deviceTapFlow)
      {
        goto LABEL_164;
      }

      if (deviceTapFlow == 1)
      {
        recurringPaymentIdentifier = @"tapFirst";
      }

      else
      {
        recurringPaymentIdentifier = @"tapLast";
      }

      v90 = @"deviceTapFlow";
    }

    [dictionary setObject:recurringPaymentIdentifier forKey:v90];
  }

  else
  {
    scoreCopy = v112;
    if (v71 == 1)
    {
      recipientIdentifier = self->_recipientIdentifier;
      if (recipientIdentifier)
      {
        [dictionary setObject:recipientIdentifier forKey:@"recipientIdentifier"];
      }

      senderAddress = self->_senderAddress;
      if (senderAddress)
      {
        v93 = PKIDSNormalizedAddress(senderAddress);
        if (v93)
        {
          [dictionary setObject:v93 forKey:@"senderAddress"];
        }
      }

      v94 = self->_recurringPaymentIdentifier;
      if (v94)
      {
        [dictionary setObject:v94 forKey:@"recurringPaymentIdentifier"];
      }

      frequency = self->_frequency;
      if (frequency)
      {
        v96 = PKPeerPaymentRecurringPaymentFrequencyToString(frequency);
        [dictionary setObject:v96 forKey:@"frequency"];
      }

      startDate = self->_startDate;
      if (startDate)
      {
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        timeZone = [currentCalendar timeZone];
        v100 = PKPaymentDateStringFromDateWithTimeZone(startDate, timeZone);
        [dictionary setObject:v100 forKey:@"startDate"];
      }

      scoreCopy = v112;
      if (self->_recurringPaymentIdentifier)
      {
        goto LABEL_164;
      }

      v101 = [MEMORY[0x1E696AD98] numberWithBool:self->_sendImmediately];
      [dictionary setObject:v101 forKey:@"sendImmediately"];
      goto LABEL_158;
    }

    if (v71 == 2)
    {
      quoteCertificatesResponse = self->_quoteCertificatesResponse;
      if (quoteCertificatesResponse)
      {
        encryptionVersion = [(PKPeerPaymentQuoteCertificatesResponse *)quoteCertificatesResponse encryptionVersion];
        v115 = [encryptionVersion isEqualToString:@"EV_ECC_v1-ASN.1"];

        if (v115)
        {
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          v75 = dictionary2;
          bankName = self->_bankName;
          if (bankName)
          {
            [dictionary2 setObject:bankName forKey:@"bankName"];
          }

          routingNumber = self->_routingNumber;
          if (routingNumber)
          {
            [v75 setObject:routingNumber forKey:@"routingNumber"];
          }

          v111 = dictionary;
          accountNumber = self->_accountNumber;
          if (accountNumber)
          {
            [v75 setObject:accountNumber forKey:@"accountNumber"];
          }

          v79 = PKLogFacilityTypeGetObject(0xCuLL);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
          {
            v116 = MEMORY[0x1E696AEC0];
            allKeys = [v75 allKeys];
            v117 = [v116 stringWithFormat:@"Encrypted Account Number keys: %@", allKeys];
            *buf = 138477827;
            v121 = v117;
            _os_log_impl(&dword_1AD337000, v79, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
          }

          v81 = v79;
          v114 = v75;
          v82 = [objc_opt_class() _HTTPBodyWithDictionary:v75];
          encryptionCertificates = [(PKPeerPaymentQuoteCertificatesResponse *)self->_quoteCertificatesResponse encryptionCertificates];
          v119 = 0;
          v84 = v82;
          v85 = PKPeerPaymentEncryptDataWithCertChain(v82, encryptionCertificates, &v119);
          v118 = v119;

          if (v85)
          {
            v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v85 encoding:4];
            dictionary = v111;
            [v111 setObject:v86 forKey:@"encryptedAccountNumbers"];
            [v111 setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
            hexEncoding2 = [v118 hexEncoding];
            [v111 setObject:hexEncoding2 forKey:@"publicKeyHash"];

            scoreCopy = v112;
          }

          else
          {
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1AD337000, v81, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate encrypted account numbers structure. This is bad!", buf, 2u);
            }

            v86 = v81;
            dictionary = v111;
            scoreCopy = v112;
          }

          goto LABEL_164;
        }

        v107 = self->_quoteCertificatesResponse;
        if (v107)
        {
          v108 = PKLogFacilityTypeGetObject(0xCuLL);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            encryptionVersion2 = [(PKPeerPaymentQuoteCertificatesResponse *)v107 encryptionVersion];
            *buf = 138543362;
            v121 = encryptionVersion2;
            _os_log_impl(&dword_1AD337000, v108, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate encrypted account numbers structure. Unknown encryption version: %{public}@", buf, 0xCu);
          }

          goto LABEL_159;
        }
      }

      v101 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v101, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate encrypted account numbers structure. Missing quoteCertificatesResponse.", buf, 2u);
      }

LABEL_158:

LABEL_159:
      scoreCopy = v112;
    }
  }

LABEL_164:
  v110 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v22 setHTTPBody:v110];

  v104 = [v22 copy];
  assessmentCopy = v113;
LABEL_147:

  return v104;
}

- (PKPeerPaymentQuoteRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v46.receiver = self;
  v46.super_class = PKPeerPaymentQuoteRequest;
  v5 = [(PKOverlayableWebServiceRequest *)&v46 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"orderIdentifier"];
    orderIdentifier = v5->_orderIdentifier;
    v5->_orderIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalFundingSource"];
    v5->_externalFundingSource = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    v5->_destination = [v13 unsignedIntegerValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    v5->_context = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    v5->_source = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestToken"];
    requestToken = v5->_requestToken;
    v5->_requestToken = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentNetwork"];
    v5->_paymentNetwork = [v20 integerValue];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethodType"];
    v5->_paymentMethodType = [v21 unsignedIntegerValue];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethodDescription"];
    paymentMethodDescription = v5->_paymentMethodDescription;
    v5->_paymentMethodDescription = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentMethodSuffix"];
    paymentMethodSuffix = v5->_paymentMethodSuffix;
    v5->_paymentMethodSuffix = v24;

    v5->_hasUpdatedPaymentMethod = [coderCopy decodeBoolForKey:@"hasUpdatedPaymentMethod"];
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientIdentifier"];
    recipientIdentifier = v5->_recipientIdentifier;
    v5->_recipientIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientAddress"];
    recipientAddress = v5->_recipientAddress;
    v5->_recipientAddress = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routingNumber"];
    routingNumber = v5->_routingNumber;
    v5->_routingNumber = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountNumber"];
    accountNumber = v5->_accountNumber;
    v5->_accountNumber = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quoteCertificatesResponse"];
    quoteCertificatesResponse = v5->_quoteCertificatesResponse;
    v5->_quoteCertificatesResponse = v36;

    v5->_preserveCurrentBalance = [coderCopy decodeBoolForKey:@"preserveCurrentBalance"];
    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recurringPaymentIdentifier"];
    recurringPaymentIdentifier = v5->_recurringPaymentIdentifier;
    v5->_recurringPaymentIdentifier = v38;

    v5->_frequency = [coderCopy decodeIntegerForKey:@"frequency"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threshold"];
    threshold = v5->_threshold;
    v5->_threshold = v42;

    v5->_sendImmediately = [coderCopy decodeBoolForKey:@"sendImmediately"];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentMode"];
    v5->_paymentMode = [v44 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  orderIdentifier = self->_orderIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:orderIdentifier forKey:@"orderIdentifier"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_externalFundingSource];
  [coderCopy encodeObject:v6 forKey:@"externalFundingSource"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_destination];
  [coderCopy encodeObject:v7 forKey:@"destination"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_context];
  [coderCopy encodeObject:v8 forKey:@"context"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_source];
  [coderCopy encodeObject:v9 forKey:@"source"];

  [coderCopy encodeObject:self->_requestToken forKey:@"requestToken"];
  [coderCopy encodeObject:self->_dpanIdentifier forKey:@"dpanIdentifier"];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_paymentNetwork];
  [coderCopy encodeObject:v10 forKey:@"paymentNetwork"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_paymentMethodType];
  [coderCopy encodeObject:v11 forKey:@"paymentMethodType"];

  [coderCopy encodeObject:self->_paymentMethodDescription forKey:@"paymentMethodDescription"];
  [coderCopy encodeObject:self->_paymentMethodSuffix forKey:@"paymentMethodSuffix"];
  [coderCopy encodeBool:self->_hasUpdatedPaymentMethod forKey:@"hasUpdatedPaymentMethod"];
  [coderCopy encodeObject:self->_recipientIdentifier forKey:@"recipientIdentifier"];
  [coderCopy encodeObject:self->_senderAddress forKey:@"senderAddress"];
  [coderCopy encodeObject:self->_recipientAddress forKey:@"recipientAddress"];
  [coderCopy encodeObject:self->_routingNumber forKey:@"routingNumber"];
  [coderCopy encodeObject:self->_accountNumber forKey:@"accountNumber"];
  [coderCopy encodeObject:self->_quoteCertificatesResponse forKey:@"quoteCertificatesResponse"];
  [coderCopy encodeBool:self->_preserveCurrentBalance forKey:@"preserveCurrentBalance"];
  [coderCopy encodeObject:self->_recurringPaymentIdentifier forKey:@"recurringPaymentIdentifier"];
  [coderCopy encodeInteger:self->_frequency forKey:@"frequency"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_threshold forKey:@"threshold"];
  [coderCopy encodeBool:self->_sendImmediately forKey:@"sendImmediately"];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_paymentMode];
  [coderCopy encodeObject:v12 forKey:@"paymentMode"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"orderIdentifier: '%@'; ", self->_orderIdentifier];
  [v6 appendFormat:@"amount: '%@'; ", self->_amount];
  [v6 appendFormat:@"currency: '%@'; ", self->_currency];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_externalFundingSource];
  [v6 appendFormat:@"externalFundingSource: '%@'; ", v7];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_destination];
  [v6 appendFormat:@"destination: '%@'; ", v8];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_context];
  [v6 appendFormat:@"context: '%@'; ", v9];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_source];
  [v6 appendFormat:@"source: '%@'; ", v10];

  [v6 appendFormat:@"requestToken: '%@'; ", self->_requestToken];
  [v6 appendFormat:@"dpanIdentifier: '%@'; ", self->_dpanIdentifier];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_paymentNetwork];
  [v6 appendFormat:@"paymentNetwork: '%@'; ", v11];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_paymentMethodType];
  [v6 appendFormat:@"paymentMethodType: '%@'; ", v12];

  [v6 appendFormat:@"paymentMethodDescription: '%@'; ", self->_paymentMethodDescription];
  [v6 appendFormat:@"paymentMethodSuffix: '%@'; ", self->_paymentMethodSuffix];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasUpdatedPaymentMethod];
  [v6 appendFormat:@"hasUpdatedPaymentMethod: '%@'; ", v13];

  [v6 appendFormat:@"recipientIdentifier: '%@'; ", self->_recipientIdentifier];
  [v6 appendFormat:@"senderAddress: '%@'; ", self->_senderAddress];
  [v6 appendFormat:@"recipientAddress: '%@'; ", self->_recipientAddress];
  [v6 appendFormat:@"routingNumber: '%@'; ", self->_routingNumber];
  [v6 appendFormat:@"accountNumber: '%@'; ", self->_accountNumber];
  [v6 appendFormat:@"quoteCertificatesResponse: '%@'; ", self->_quoteCertificatesResponse];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_preserveCurrentBalance];
  [v6 appendFormat:@"preserveCurrentBalance: '%@'; ", v14];

  [v6 appendFormat:@"recurringPaymentIdentifier: '%@'; ", self->_recurringPaymentIdentifier];
  v15 = PKPeerPaymentRecurringPaymentFrequencyToString(self->_frequency);
  [v6 appendFormat:@"frequency: '%@'; ", v15];

  [v6 appendFormat:@"startDate: '%@'; ", self->_startDate];
  [v6 appendFormat:@"threshold: '%@'; ", self->_threshold];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_sendImmediately];
  [v6 appendFormat:@"sendImmediately: '%@'; ", v16];

  v17 = PKPeerPaymentPaymentModeToString(self->_paymentMode);
  [v6 appendFormat:@"paymentMode: %@", v17];

  [v6 appendFormat:@">"];
  v18 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v18;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_orderIdentifier)
  {
    [array addObject:?];
  }

  if (self->_amount)
  {
    [v4 addObject:?];
  }

  if (self->_currency)
  {
    [v4 addObject:?];
  }

  if (self->_requestToken)
  {
    [v4 addObject:?];
  }

  if (self->_dpanIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_paymentMethodDescription)
  {
    [v4 addObject:?];
  }

  if (self->_paymentMethodSuffix)
  {
    [v4 addObject:?];
  }

  if (self->_recipientIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_senderAddress)
  {
    [v4 addObject:?];
  }

  if (self->_recipientAddress)
  {
    [v4 addObject:?];
  }

  if (self->_routingNumber)
  {
    [v4 addObject:?];
  }

  if (self->_accountNumber)
  {
    [v4 addObject:?];
  }

  if (self->_quoteCertificatesResponse)
  {
    [v4 addObject:?];
  }

  if (self->_recurringPaymentIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_startDate)
  {
    [v4 addObject:?];
  }

  if (self->_threshold)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_externalFundingSource - v5 + 32 * v5;
  v7 = self->_destination - v6 + 32 * v6;
  v8 = self->_context - v7 + 32 * v7;
  v9 = self->_source - v8 + 32 * v8;
  v10 = self->_paymentNetwork - v9 + 32 * v9;
  v11 = self->_paymentMethodType - v10 + 32 * v10;
  v12 = self->_hasUpdatedPaymentMethod - v11 + 32 * v11;
  v13 = self->_preserveCurrentBalance - v12 + 32 * v12;
  v14 = self->_frequency - v13 + 32 * v13;
  v15 = self->_sendImmediately - v14 + 32 * v14;
  v16 = self->_paymentMode - v15 + 32 * v15;

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentQuoteRequest *)self isEqualToPeerPaymentQuoteRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToPeerPaymentQuoteRequest:(id)request
{
  requestCopy = request;
  orderIdentifier = self->_orderIdentifier;
  v6 = requestCopy[12];
  if (orderIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (orderIdentifier != v6)
    {
      goto LABEL_101;
    }
  }

  else if (([(NSString *)orderIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_101;
  }

  amount = self->_amount;
  v9 = requestCopy[13];
  if (amount)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (amount != v9)
    {
      goto LABEL_101;
    }
  }

  else if (([(NSDecimalNumber *)amount isEqual:?]& 1) == 0)
  {
    goto LABEL_101;
  }

  currency = self->_currency;
  v12 = requestCopy[14];
  if (currency)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (currency != v12)
    {
      goto LABEL_101;
    }
  }

  else if (([(NSString *)currency isEqual:?]& 1) == 0)
  {
    goto LABEL_101;
  }

  if (self->_externalFundingSource != requestCopy[15] || self->_destination != requestCopy[16] || self->_context != requestCopy[17] || self->_source != requestCopy[18])
  {
    goto LABEL_101;
  }

  requestToken = self->_requestToken;
  v15 = requestCopy[19];
  if (requestToken && v15)
  {
    if (![(PKPeerPaymentRequestToken *)requestToken isEqual:?])
    {
      goto LABEL_101;
    }
  }

  else if (requestToken != v15)
  {
    goto LABEL_101;
  }

  dpanIdentifier = self->_dpanIdentifier;
  v17 = requestCopy[20];
  if (dpanIdentifier && v17)
  {
    if (([(NSString *)dpanIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (dpanIdentifier != v17)
  {
    goto LABEL_101;
  }

  if (self->_paymentNetwork != requestCopy[22] || self->_paymentMethodType != requestCopy[23])
  {
    goto LABEL_101;
  }

  paymentMethodDescription = self->_paymentMethodDescription;
  v19 = requestCopy[24];
  if (paymentMethodDescription && v19)
  {
    if (([(NSString *)paymentMethodDescription isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (paymentMethodDescription != v19)
  {
    goto LABEL_101;
  }

  paymentMethodSuffix = self->_paymentMethodSuffix;
  v21 = requestCopy[25];
  if (paymentMethodSuffix && v21)
  {
    if (([(NSString *)paymentMethodSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (paymentMethodSuffix != v21)
  {
    goto LABEL_101;
  }

  if (self->_hasUpdatedPaymentMethod != *(requestCopy + 89))
  {
    goto LABEL_101;
  }

  recipientIdentifier = self->_recipientIdentifier;
  v23 = requestCopy[26];
  if (recipientIdentifier && v23)
  {
    if (([(NSString *)recipientIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (recipientIdentifier != v23)
  {
    goto LABEL_101;
  }

  senderAddress = self->_senderAddress;
  v25 = requestCopy[27];
  if (senderAddress && v25)
  {
    if (([(NSString *)senderAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (senderAddress != v25)
  {
    goto LABEL_101;
  }

  recipientAddress = self->_recipientAddress;
  v27 = requestCopy[30];
  if (recipientAddress && v27)
  {
    if (([(NSString *)recipientAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (recipientAddress != v27)
  {
    goto LABEL_101;
  }

  routingNumber = self->_routingNumber;
  v29 = requestCopy[33];
  if (routingNumber && v29)
  {
    if (([(NSString *)routingNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (routingNumber != v29)
  {
    goto LABEL_101;
  }

  accountNumber = self->_accountNumber;
  v31 = requestCopy[34];
  if (accountNumber && v31)
  {
    if (([(NSString *)accountNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (accountNumber != v31)
  {
    goto LABEL_101;
  }

  quoteCertificatesResponse = self->_quoteCertificatesResponse;
  v33 = requestCopy[35];
  if (quoteCertificatesResponse && v33)
  {
    if (([(PKPeerPaymentQuoteCertificatesResponse *)quoteCertificatesResponse isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (quoteCertificatesResponse != v33)
  {
    goto LABEL_101;
  }

  recurringPaymentIdentifier = self->_recurringPaymentIdentifier;
  v35 = requestCopy[36];
  if (recurringPaymentIdentifier && v35)
  {
    if (([(NSString *)recurringPaymentIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (recurringPaymentIdentifier != v35)
  {
    goto LABEL_101;
  }

  startDate = self->_startDate;
  v37 = requestCopy[38];
  if (startDate && v37)
  {
    if (([(NSDate *)startDate isEqual:?]& 1) == 0)
    {
      goto LABEL_101;
    }
  }

  else if (startDate != v37)
  {
    goto LABEL_101;
  }

  threshold = self->_threshold;
  v39 = requestCopy[39];
  if (!threshold || !v39)
  {
    if (threshold == v39)
    {
      goto LABEL_97;
    }

LABEL_101:
    v40 = 0;
    goto LABEL_102;
  }

  if (([(NSDecimalNumber *)threshold isEqual:?]& 1) == 0)
  {
    goto LABEL_101;
  }

LABEL_97:
  if (self->_frequency != requestCopy[37] || self->_sendImmediately != *(requestCopy + 90) || self->_paymentMode != requestCopy[28])
  {
    goto LABEL_101;
  }

  v40 = self->_preserveCurrentBalance == *(requestCopy + 88);
LABEL_102:

  return v40;
}

@end