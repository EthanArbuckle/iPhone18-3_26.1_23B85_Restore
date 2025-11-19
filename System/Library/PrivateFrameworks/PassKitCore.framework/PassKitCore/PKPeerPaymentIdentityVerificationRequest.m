@interface PKPeerPaymentIdentityVerificationRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5 deviceScore:(id)a6 odiAssessment:(id)a7 deviceMetadata:(id)a8;
@end

@implementation PKPeerPaymentIdentityVerificationRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5 deviceScore:(id)a6 odiAssessment:(id)a7 deviceMetadata:(id)a8
{
  v62 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v14)
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

  if (!v15)
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

  if (!v16)
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

  if (!v19)
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

  v21 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v14 endpointComponents:&unk_1F23B4778 queryParameters:0 appleAccountInformation:v15];
  [v21 setHTTPMethod:@"POST"];
  [v21 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v56 = [MEMORY[0x1E695DF90] dictionary];
  v22 = [(PKOverlayableWebServiceRequest *)self secureOverlayParameters];
  v23 = [v22 count];

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
    v25 = [MEMORY[0x1E695DF90] dictionary];
    [(PKOverlayableWebServiceRequest *)self _applySecureOverlayToDictionary:v25];
    v54 = [v25 objectForKeyedSubscript:@"addressLine2"];
    if (![v54 length])
    {
      [v25 removeObjectForKey:@"addressLine2"];
    }

    v55 = v25;
    if ([v25 count])
    {
      v51 = v24;
      v26 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = MEMORY[0x1E696AEC0];
        osloga = [v55 allKeys];
        v28 = [v27 stringWithFormat:@"Encrypted Identity Verification Fields: %@", osloga];
        *buf = 138477827;
        v59 = v28;
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
      [v56 setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
      [v56 setObject:v52 forKey:@"encryptedInputData"];
      v40 = [v53 hexEncoding];
      [v56 setObject:v40 forKey:@"publicKeyHash"];

      v39 = v53;
    }

    else
    {
      v39 = v53;
    }

LABEL_38:
  }

  v41 = [(PKOverlayableWebServiceRequest *)self overlayParameters];
  v42 = [v41 count];

  if (v42)
  {
    v43 = [MEMORY[0x1E695DF90] dictionary];
    [(PKOverlayableWebServiceRequest *)self _applyOverlayToDictionary:v43];
    [v56 setObject:v43 forKey:@"inputData"];
  }

  if (v17)
  {
    v44 = [v17 hexEncoding];
    [v56 setObject:v44 forKey:@"deviceScore"];
  }

  if (v18)
  {
    [v56 setObject:v18 forKey:@"odiAssessment"];
  }

  v45 = [v20 dictionaryRepresentation];
  [v56 setObject:v45 forKey:@"deviceMetadata"];

  prerequisiteIdentifier = self->_prerequisiteIdentifier;
  if (prerequisiteIdentifier)
  {
    [v56 setObject:prerequisiteIdentifier forKey:@"prerequisiteIdentifier"];
  }

  v47 = PKPeerPaymentIdentityVerificationContextToString(self->_verificationContext);
  [v56 setObject:v47 forKey:@"verificationContext"];

  v48 = [objc_opt_class() _HTTPBodyWithDictionary:v56];
  [v21 setHTTPBody:v48];

  v37 = [v21 copy];
LABEL_24:

  return v37;
}

@end