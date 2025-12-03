@interface PKPeerPaymentUpdateUserInfoRequest
- (PKPeerPaymentUpdateUserInfoRequest)initWithAccountIdentifier:(id)identifier;
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata;
@end

@implementation PKPeerPaymentUpdateUserInfoRequest

- (PKPeerPaymentUpdateUserInfoRequest)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentUpdateUserInfoRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountIdentifier, identifier);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata
{
  v63 = *MEMORY[0x1E69E9840];
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
      goto LABEL_23;
    }

    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    *buf = 138543618;
    v60 = v35;
    v61 = 2082;
    v62 = "url";
LABEL_22:
    _os_log_impl(&dword_1AD337000, v23, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_23;
  }

  if (!informationCopy)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v36 = objc_opt_class();
    v35 = NSStringFromClass(v36);
    *buf = 138543618;
    v60 = v35;
    v61 = 2082;
    v62 = "appleAccountInformation";
    goto LABEL_22;
  }

  if (!identifierCopy)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v37 = objc_opt_class();
    v35 = NSStringFromClass(v37);
    *buf = 138543618;
    v60 = v35;
    v61 = 2082;
    v62 = "deviceIdentifier";
    goto LABEL_22;
  }

  if (!metadataCopy)
  {
    v23 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_opt_class();
      v35 = NSStringFromClass(v38);
      *buf = 138543618;
      v60 = v35;
      v61 = 2082;
      v62 = "deviceMetadata";
      goto LABEL_22;
    }

LABEL_23:
    v39 = 0;
    goto LABEL_24;
  }

  accountIdentifier = self->_accountIdentifier;
  v58[0] = @"account";
  v58[1] = accountIdentifier;
  v58[2] = @"userInfo";
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
  v23 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v22 queryParameters:0 appleAccountInformation:informationCopy];

  [v23 setHTTPMethod:@"POST"];
  [v23 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  secureOverlayParameters = [(PKOverlayableWebServiceRequest *)self secureOverlayParameters];
  v25 = [secureOverlayParameters count];

  if (v25)
  {
    if (![(NSArray *)self->_certificates count])
    {
      v41 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v41, OS_LOG_TYPE_DEFAULT, "Error: Tried to update user info without certificates", buf, 2u);
      }

      v33 = v23;
      v23 = 0;
      goto LABEL_38;
    }

    v26 = objc_autoreleasePoolPush();
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [(PKOverlayableWebServiceRequest *)self _applySecureOverlayToDictionary:dictionary2];
    v54 = [dictionary2 objectForKeyedSubscript:@"addressLine2"];
    if (![v54 length])
    {
      [dictionary2 removeObjectForKey:@"addressLine2"];
    }

    v55 = dictionary2;
    if ([dictionary2 count])
    {
      v51 = v26;
      v28 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = MEMORY[0x1E696AEC0];
        osloga = [v55 allKeys];
        osloga = [v29 stringWithFormat:@"Encrypted User Info Fields: %@", osloga];
        *buf = 138477827;
        v60 = osloga;
        _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
      }

      oslog = v28;

      v31 = [objc_opt_class() _HTTPBodyWithDictionary:v55];
      certificates = self->_certificates;
      v57 = 0;
      v33 = PKPeerPaymentEncryptDataWithCertChain(v31, certificates, &v57);
      v53 = v57;

      if (v33)
      {
        v26 = v51;
        goto LABEL_35;
      }

      v26 = v51;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate peer payment update user info request encryptedCardData. This is bad!", buf, 2u);
      }
    }

    else
    {
      v53 = 0;
    }

    v33 = 0;
LABEL_35:

    objc_autoreleasePoolPop(v26);
    if (v33)
    {
      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v33 encoding:4];
      [dictionary setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
      [dictionary setObject:v52 forKey:@"encryptedInputData"];
      hexEncoding = [v53 hexEncoding];
      [dictionary setObject:hexEncoding forKey:@"publicKeyHash"];

      v41 = v53;
    }

    else
    {
      v41 = v53;
    }

LABEL_38:
  }

  overlayParameters = [(PKOverlayableWebServiceRequest *)self overlayParameters];
  v44 = [overlayParameters count];

  if (v44)
  {
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    [(PKOverlayableWebServiceRequest *)self _applyOverlayToDictionary:dictionary3];
    [dictionary setObject:dictionary3 forKey:@"inputData"];
  }

  if (scoreCopy)
  {
    hexEncoding2 = [scoreCopy hexEncoding];
    [dictionary setObject:hexEncoding2 forKey:@"deviceScore"];
  }

  if (assessmentCopy)
  {
    [dictionary setObject:assessmentCopy forKey:@"odiAssessment"];
  }

  dictionaryRepresentation = [v20 dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKey:@"deviceMetadata"];

  v48 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v23 setHTTPBody:v48];

  v39 = [v23 copy];
LABEL_24:

  return v39;
}

@end