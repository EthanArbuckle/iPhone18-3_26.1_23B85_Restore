@interface PKPeerPaymentPerformRequest
+ (id)requestWithAuthorizedPeerPaymentQuote:(id)quote;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata;
@end

@implementation PKPeerPaymentPerformRequest

+ (id)requestWithAuthorizedPeerPaymentQuote:(id)quote
{
  quoteCopy = quote;
  peerPaymentQuote = [quoteCopy peerPaymentQuote];
  validUntil = [peerPaymentQuote validUntil];

  if ((PKPeerPaymentDisableInvalidQuoteEnforcement() & 1) == 0 && validUntil && ([MEMORY[0x1E695DF00] now], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "compare:", validUntil), v6, v7 == 1))
  {
    v8 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Quote is expired, suppress call to perform", v16, 2u);
    }

    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(PKPeerPaymentPerformRequest);
    peerPaymentQuote2 = [quoteCopy peerPaymentQuote];
    identifier = [peerPaymentQuote2 identifier];
    [(PKPeerPaymentPerformRequest *)v9 setQuoteIdentifier:identifier];

    transactionData = [quoteCopy transactionData];
    [(PKPeerPaymentPerformRequest *)v9 setPaymentData:transactionData];

    certificates = [quoteCopy certificates];
    [(PKPeerPaymentPerformRequest *)v9 setCertificates:certificates];

    contact = [quoteCopy contact];
    [(PKPeerPaymentPerformRequest *)v9 setContact:contact];
  }

  return v9;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata
{
  v81 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  identifierCopy = identifier;
  scoreCopy = score;
  assessmentCopy = assessment;
  metadataCopy = metadata;
  v20 = metadataCopy;
  if (!lCopy)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    *buf = 138543618;
    v78 = v50;
    v79 = 2082;
    v80 = "url";
LABEL_64:
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_65;
  }

  if (!informationCopy)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v51 = objc_opt_class();
    v50 = NSStringFromClass(v51);
    *buf = 138543618;
    v78 = v50;
    v79 = 2082;
    v80 = "appleAccountInformation";
    goto LABEL_64;
  }

  if (!identifierCopy)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v52 = objc_opt_class();
    v50 = NSStringFromClass(v52);
    *buf = 138543618;
    v78 = v50;
    v79 = 2082;
    v80 = "deviceIdentifier";
    goto LABEL_64;
  }

  if (!metadataCopy)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v53 = objc_opt_class();
    v50 = NSStringFromClass(v53);
    *buf = 138543618;
    v78 = v50;
    v79 = 2082;
    v80 = "deviceMetadata";
    goto LABEL_64;
  }

  quoteIdentifier = self->_quoteIdentifier;
  if (!quoteIdentifier)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v54 = objc_opt_class();
    v50 = NSStringFromClass(v54);
    *buf = 138543618;
    v78 = v50;
    v79 = 2082;
    v80 = "_quoteIdentifier";
    goto LABEL_64;
  }

  if (!self->_paymentData)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    v55 = objc_opt_class();
    v50 = NSStringFromClass(v55);
    *buf = 138543618;
    v78 = v50;
    v79 = 2082;
    v80 = "_paymentData";
    goto LABEL_64;
  }

  if (!self->_certificates)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v58 = objc_opt_class();
      v50 = NSStringFromClass(v58);
      *buf = 138543618;
      v78 = v50;
      v79 = 2082;
      v80 = "_certificates";
      goto LABEL_64;
    }

LABEL_65:
    v57 = 0;
    goto LABEL_66;
  }

  v76[0] = @"quote";
  v76[1] = quoteIdentifier;
  v76[2] = @"perform";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
  v23 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v22 queryParameters:0 appleAccountInformation:informationCopy];

  [v23 setHTTPMethod:@"POST"];
  [v23 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  paymentData = self->_paymentData;
  v26 = dictionary;
  if (paymentData)
  {
    hexEncoding = [(NSData *)paymentData hexEncoding];
    [v26 setObject:hexEncoding forKey:@"paymentData"];
  }

  if (!self->_certificates || ![MEMORY[0x1E696ACB0] isValidJSONObject:?])
  {
    v56 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v56, OS_LOG_TYPE_DEFAULT, "Error: Perform Quote _certificates is not a valid JSON encodable object.", buf, 2u);
    }

    v57 = 0;
    goto LABEL_83;
  }

  [v26 setObject:self->_certificates forKey:@"certificates"];
  if (scoreCopy)
  {
    hexEncoding2 = [scoreCopy hexEncoding];
    [v26 setObject:hexEncoding2 forKey:@"deviceScore"];
  }

  if (assessmentCopy)
  {
    [v26 setObject:assessmentCopy forKey:@"odiAssessment"];
  }

  dictionaryRepresentation = [v20 dictionaryRepresentation];
  [v26 setObject:dictionaryRepresentation forKey:@"deviceMetadata"];

  pushToken = self->_pushToken;
  if (pushToken)
  {
    [v26 setObject:pushToken forKey:@"pushToken"];
  }

  signedEnrollmentDataSignature = self->_signedEnrollmentDataSignature;
  if (signedEnrollmentDataSignature)
  {
    hexEncoding3 = [(NSData *)signedEnrollmentDataSignature hexEncoding];
    [v26 setObject:hexEncoding3 forKey:@"signedEnrollmentDataSignature"];
  }

  contact = self->_contact;
  if (contact)
  {
    dictionaryRepresentation2 = [(PKContact *)contact dictionaryRepresentation];
    [v26 setObject:dictionaryRepresentation2 forKey:@"contact"];
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [v26 setObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  }

  passSerialNumber = self->_passSerialNumber;
  if (passSerialNumber)
  {
    [v26 setObject:passSerialNumber forKey:@"passSerialNumber"];
  }

  cryptogramType = self->_cryptogramType;
  if (cryptogramType)
  {
    [v26 setObject:cryptogramType forKey:@"cryptogramType"];
  }

  if (self->_accountNumber && self->_routingNumber)
  {
    v74 = v26;
    v69 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v38 = [v69 numberFromString:self->_accountNumber];
    stringValue = [v38 stringValue];

    v39 = [MEMORY[0x1E696AD60] stringWithString:@"EE2C738F-01CE-4336-AB9C-CE8A72E3679E"];
    [v39 appendString:@"-"];
    [v39 appendString:stringValue];
    [v39 appendString:@"-"];
    [v39 appendString:self->_routingNumber];
    v67 = v39;
    v40 = [v39 dataUsingEncoding:4];
    sHA256Hash = [v40 SHA256Hash];

    v42 = [sHA256Hash base64EncodedStringWithOptions:0];
    if (v42)
    {
      [v74 setObject:v42 forKey:@"achHash"];
    }

    v26 = v74;
  }

  if (self->_destination != 5)
  {
    goto LABEL_82;
  }

  v75 = v26;
  if (!self->_senderAddress)
  {
    v60 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    v61 = objc_opt_class();
    v62 = NSStringFromClass(v61);
    *buf = 138543618;
    v78 = v62;
    v79 = 2082;
    v80 = "_senderAddress";
LABEL_77:
    _os_log_impl(&dword_1AD337000, v60, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_78;
  }

  if (!self->_encryptedRecipientData)
  {
    v60 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    v63 = objc_opt_class();
    v62 = NSStringFromClass(v63);
    *buf = 138543618;
    v78 = v62;
    v79 = 2082;
    v80 = "_encryptedRecipientData";
    goto LABEL_77;
  }

  if (!self->_publicKeyHash)
  {
    v60 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    v64 = objc_opt_class();
    v62 = NSStringFromClass(v64);
    *buf = 138543618;
    v78 = v62;
    v79 = 2082;
    v80 = "_publicKeyHash";
    goto LABEL_77;
  }

  if (self->_ephemeralPublicKey)
  {
    v73 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v68 = PKPrivacyEncryptionSchemeToString(self->_encryptionScheme);
    [v73 setObject:v68 forKey:@"version"];

    publicKeyHash = self->_publicKeyHash;
    if (publicKeyHash)
    {
      [v73 setObject:publicKeyHash forKey:@"publicKeyHash"];
    }

    ephemeralPublicKey = self->_ephemeralPublicKey;
    if (ephemeralPublicKey)
    {
      [v73 setObject:ephemeralPublicKey forKey:@"ephemeralPublicKey"];
    }

    encryptedRecipientData = self->_encryptedRecipientData;
    if (encryptedRecipientData)
    {
      [v73 setObject:encryptedRecipientData forKey:@"data"];
    }

    v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v46 setObject:v73 forKey:@"recipientEncryptionFields"];
    v70 = PKPeerPaymentContactAddressTypeToString(self->_senderAddressType);
    [v46 setObject:v70 forKey:@"senderAddressType"];

    senderAddress = self->_senderAddress;
    if (senderAddress)
    {
      if (self->_senderAddressType)
      {
        v48 = senderAddress;
      }

      else
      {
        v48 = PKIDSNormalizedAddress(senderAddress);
      }

      v71 = v48;
      [v46 setObject:v48 forKey:@"senderAddress"];
    }

    [v26 setObject:v46 forKey:@"recipientMetadata"];

LABEL_82:
    v66 = [objc_opt_class() _HTTPBodyWithDictionary:v26];
    [v23 setHTTPBody:v66];

    v57 = [v23 copy];
    goto LABEL_83;
  }

  v60 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v65 = objc_opt_class();
    v62 = NSStringFromClass(v65);
    *buf = 138543618;
    v78 = v62;
    v79 = 2082;
    v80 = "_ephemeralPublicKey";
    goto LABEL_77;
  }

LABEL_78:

  v57 = 0;
  v26 = v75;
LABEL_83:

LABEL_66:

  return v57;
}

@end