@interface PKPeerPaymentUpdateUserInfoRequest
- (PKPeerPaymentUpdateUserInfoRequest)initWithAccountIdentifier:(id)a3;
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5 deviceScore:(id)a6 odiAssessment:(id)a7 deviceMetadata:(id)a8;
@end

@implementation PKPeerPaymentUpdateUserInfoRequest

- (PKPeerPaymentUpdateUserInfoRequest)initWithAccountIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentUpdateUserInfoRequest;
  v6 = [(PKOverlayableWebServiceRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountIdentifier, a3);
  }

  return v7;
}

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4 deviceIdentifier:(id)a5 deviceScore:(id)a6 odiAssessment:(id)a7 deviceMetadata:(id)a8
{
  v63 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v14)
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

  if (!v15)
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

  if (!v16)
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

  if (!v19)
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
  v23 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v14 endpointComponents:v22 queryParameters:0 appleAccountInformation:v15];

  [v23 setHTTPMethod:@"POST"];
  [v23 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  v56 = [MEMORY[0x1E695DF90] dictionary];
  v24 = [(PKOverlayableWebServiceRequest *)self secureOverlayParameters];
  v25 = [v24 count];

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
    v27 = [MEMORY[0x1E695DF90] dictionary];
    [(PKOverlayableWebServiceRequest *)self _applySecureOverlayToDictionary:v27];
    v54 = [v27 objectForKeyedSubscript:@"addressLine2"];
    if (![v54 length])
    {
      [v27 removeObjectForKey:@"addressLine2"];
    }

    v55 = v27;
    if ([v27 count])
    {
      v51 = v26;
      v28 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = MEMORY[0x1E696AEC0];
        osloga = [v55 allKeys];
        v30 = [v29 stringWithFormat:@"Encrypted User Info Fields: %@", osloga];
        *buf = 138477827;
        v60 = v30;
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
      [v56 setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
      [v56 setObject:v52 forKey:@"encryptedInputData"];
      v42 = [v53 hexEncoding];
      [v56 setObject:v42 forKey:@"publicKeyHash"];

      v41 = v53;
    }

    else
    {
      v41 = v53;
    }

LABEL_38:
  }

  v43 = [(PKOverlayableWebServiceRequest *)self overlayParameters];
  v44 = [v43 count];

  if (v44)
  {
    v45 = [MEMORY[0x1E695DF90] dictionary];
    [(PKOverlayableWebServiceRequest *)self _applyOverlayToDictionary:v45];
    [v56 setObject:v45 forKey:@"inputData"];
  }

  if (v17)
  {
    v46 = [v17 hexEncoding];
    [v56 setObject:v46 forKey:@"deviceScore"];
  }

  if (v18)
  {
    [v56 setObject:v18 forKey:@"odiAssessment"];
  }

  v47 = [v20 dictionaryRepresentation];
  [v56 setObject:v47 forKey:@"deviceMetadata"];

  v48 = [objc_opt_class() _HTTPBodyWithDictionary:v56];
  [v23 setHTTPBody:v48];

  v39 = [v23 copy];
LABEL_24:

  return v39;
}

@end