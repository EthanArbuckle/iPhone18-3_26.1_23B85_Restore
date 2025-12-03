@interface PKPeerPaymentIdentityVerificationRequest
- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata;
@end

@implementation PKPeerPaymentIdentityVerificationRequest

- (id)_urlRequestWithServiceURL:(id)l appleAccountInformation:(id)information deviceIdentifier:(id)identifier deviceScore:(id)score odiAssessment:(id)assessment deviceMetadata:(id)metadata
{
  v62 = *MEMORY[0x1E69E9840];
  lCopy = l;
  informationCopy = information;
  identifierCopy = identifier;
  scoreCopy = score;
  assessmentCopy = assessment;
  metadataCopy = metadata;
  v20 = metadataCopy;
  if (!lCopy)
  {
    v21 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = 138543618;
    v59 = v33;
    v60 = 2082;
    v61 = "url";
LABEL_22:
    _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_23;
  }

  if (!informationCopy)
  {
    v21 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v34 = objc_opt_class();
    v33 = NSStringFromClass(v34);
    *buf = 138543618;
    v59 = v33;
    v60 = 2082;
    v61 = "appleAccountInformation";
    goto LABEL_22;
  }

  if (!identifierCopy)
  {
    v21 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v35 = objc_opt_class();
    v33 = NSStringFromClass(v35);
    *buf = 138543618;
    v59 = v33;
    v60 = 2082;
    v61 = "deviceIdentifier";
    goto LABEL_22;
  }

  if (!metadataCopy)
  {
    v21 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      v33 = NSStringFromClass(v36);
      *buf = 138543618;
      v59 = v33;
      v60 = 2082;
      v61 = "deviceMetadata";
      goto LABEL_22;
    }

LABEL_23:
    v37 = 0;
    goto LABEL_24;
  }

  v21 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:&unk_1F23B4778 queryParameters:0 appleAccountInformation:informationCopy];
  [v21 setHTTPMethod:@"POST"];
  [v21 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  secureOverlayParameters = [(PKOverlayableWebServiceRequest *)self secureOverlayParameters];
  v23 = [secureOverlayParameters count];

  if (v23)
  {
    if (![(NSArray *)self->_certificates count])
    {
      v39 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v39, OS_LOG_TYPE_DEFAULT, "Error: Tried to verify identity without certificates", buf, 2u);
      }

      v31 = v21;
      v21 = 0;
      goto LABEL_38;
    }

    v24 = objc_autoreleasePoolPush();
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
      v51 = v24;
      v26 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = MEMORY[0x1E696AEC0];
        osloga = [v55 allKeys];
        osloga = [v27 stringWithFormat:@"Encrypted Identity Verification Fields: %@", osloga];
        *buf = 138477827;
        v59 = osloga;
        _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
      }

      oslog = v26;

      v29 = [objc_opt_class() _HTTPBodyWithDictionary:v55];
      certificates = self->_certificates;
      v57 = 0;
      v31 = PKPeerPaymentEncryptDataWithCertChain(v29, certificates, &v57);
      v53 = v57;

      if (v31)
      {
        v24 = v51;
        goto LABEL_35;
      }

      v24 = v51;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate peer payment identity verification request encryptedCardData. This is bad!", buf, 2u);
      }
    }

    else
    {
      v53 = 0;
    }

    v31 = 0;
LABEL_35:

    objc_autoreleasePoolPop(v24);
    if (v31)
    {
      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v31 encoding:4];
      [dictionary setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
      [dictionary setObject:v52 forKey:@"encryptedInputData"];
      hexEncoding = [v53 hexEncoding];
      [dictionary setObject:hexEncoding forKey:@"publicKeyHash"];

      v39 = v53;
    }

    else
    {
      v39 = v53;
    }

LABEL_38:
  }

  overlayParameters = [(PKOverlayableWebServiceRequest *)self overlayParameters];
  v42 = [overlayParameters count];

  if (v42)
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

  prerequisiteIdentifier = self->_prerequisiteIdentifier;
  if (prerequisiteIdentifier)
  {
    [dictionary setObject:prerequisiteIdentifier forKey:@"prerequisiteIdentifier"];
  }

  v47 = PKPeerPaymentIdentityVerificationContextToString(self->_verificationContext);
  [dictionary setObject:v47 forKey:@"verificationContext"];

  v48 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v21 setHTTPBody:v48];

  v37 = [v21 copy];
LABEL_24:

  return v37;
}

@end