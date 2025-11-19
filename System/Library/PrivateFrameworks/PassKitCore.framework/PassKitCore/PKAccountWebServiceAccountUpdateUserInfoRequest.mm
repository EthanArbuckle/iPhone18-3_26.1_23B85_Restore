@interface PKAccountWebServiceAccountUpdateUserInfoRequest
- (id)_urlRequestWithAppleAccountInformation:(id)a3;
@end

@implementation PKAccountWebServiceAccountUpdateUserInfoRequest

- (id)_urlRequestWithAppleAccountInformation:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_baseURL)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    *buf = 138543618;
    v65 = v26;
    v66 = 2082;
    v67 = "_baseURL";
LABEL_30:
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "Request %{public}@ missing parameter '%{public}s'.", buf, 0x16u);

    goto LABEL_31;
  }

  if (!v4)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v27 = objc_opt_class();
    v26 = NSStringFromClass(v27);
    *buf = 138543618;
    v65 = v26;
    v66 = 2082;
    v67 = "appleAccountInformation";
    goto LABEL_30;
  }

  if (!self->_accountIdentifier)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v28 = objc_opt_class();
    v26 = NSStringFromClass(v28);
    *buf = 138543618;
    v65 = v26;
    v66 = 2082;
    v67 = "_accountIdentifier";
    goto LABEL_30;
  }

  if (self->_ssn && !self->_certificates)
  {
    v8 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_opt_class();
      v26 = NSStringFromClass(v35);
      *buf = 138543618;
      v65 = v26;
      v66 = 2082;
      v67 = "_certificates";
      goto LABEL_30;
    }

LABEL_31:
    v36 = 0;
    goto LABEL_32;
  }

  if (self->_encryptionVersion)
  {
    encryptionVersion = self->_encryptionVersion;
  }

  else
  {
    encryptionVersion = @"EV_ECC_v1-ASN.1";
  }

  objc_storeStrong(&self->_encryptionVersion, encryptionVersion);
  accountIdentifier = self->_accountIdentifier;
  v63[0] = @"accounts";
  v63[1] = accountIdentifier;
  v63[2] = @"userInfo";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:3];
  v9 = [(PKAccountWebServiceRequest *)self _murlRequestWithServiceURL:self->_baseURL endpointComponents:v8 queryParameters:0 appleAccountInformation:v5];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  [v9 setCachePolicy:1];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [(PKOverlayableWebServiceRequest *)self secureOverlayParameters];
  v12 = [v11 count];

  certificates = self->_certificates;
  if (v12)
  {
    if (![(NSArray *)certificates count])
    {
      v38 = PKLogFacilityTypeGetObject(0xFuLL);
      v15 = 0x1E695D000;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "Error: Tried to update user info without certificates", buf, 2u);
      }

      v23 = 0;
      v24 = 0;
      v39 = v9;
      v9 = 0;
      goto LABEL_52;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = 0x1E695D000uLL;
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PKOverlayableWebServiceRequest *)self _applySecureOverlayToDictionary:v16];
    if ([v16 count])
    {
      v56 = v14;
      v17 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = [v16 allKeys];
        v20 = [v18 stringWithFormat:@"Encrypted User Info Fields: %@", v19];
        *buf = 138477827;
        v65 = v20;
        _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);

        v15 = 0x1E695D000;
      }

      oslog = v17;

      v21 = [objc_opt_class() _HTTPBodyWithDictionary:v16];
      v22 = self->_certificates;
      v60 = 0;
      v23 = PKFeatureEncryptDataWithCertChain(v21, v22, &v60, self->_featureIdentifier);
      v24 = v60;

      if (v23)
      {
        v14 = v56;
        goto LABEL_44;
      }

      v14 = v56;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, oslog, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate user indo request encryptedData. This is bad!", buf, 2u);
      }
    }

    else
    {
      v24 = 0;
    }

    v23 = 0;
LABEL_44:

    objc_autoreleasePoolPop(v14);
    if (!v23)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  if (!certificates || (ssn = self->_ssn) == 0)
  {
    v23 = 0;
    v24 = 0;
    v15 = 0x1E695D000;
    goto LABEL_53;
  }

  v61 = @"ssnFull";
  v62 = ssn;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  v59 = 0;
  v31 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v30 options:1 error:&v59];
  v32 = v59;
  if (v31)
  {
    v33 = self->_certificates;
    v58 = 0;
    v23 = PKFeatureEncryptDataWithCertChain(v31, v33, &v58, self->_featureIdentifier);
    v24 = v58;
    if (v23)
    {
      goto LABEL_50;
    }

    v34 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate user info request encryptedData.", buf, 2u);
    }
  }

  else
  {
    v34 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v40 = objc_opt_class();
      *buf = 138412546;
      v65 = v40;
      v66 = 2112;
      v67 = v32;
      v41 = v40;
      _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "Could not create data for %@: %@", buf, 0x16u);
    }

    v24 = 0;
  }

  v23 = 0;
LABEL_50:

  v15 = 0x1E695D000uLL;
  if (v23)
  {
LABEL_51:
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v23 encoding:4];
    [v10 setObject:self->_encryptionVersion forKey:@"encryptionVersion"];
    [v10 setObject:v39 forKey:@"encryptedData"];
    v38 = [v24 hexEncoding];
    [v10 setObject:v38 forKey:@"publicKeyHash"];
LABEL_52:
  }

LABEL_53:
  v42 = objc_alloc_init(*(v15 + 3984));
  [(PKOverlayableWebServiceRequest *)self _applyOverlayToDictionary:v42];
  [v10 setObject:v42 forKey:@"inputData"];
  contact = self->_contact;
  if (contact)
  {
    v57 = v5;
    v44 = v23;
    v45 = v9;
    v46 = v24;
    v47 = [(CNContact *)contact postalAddresses];
    v48 = [v47 firstObject];
    v49 = [v48 value];

    if (v49)
    {
      v50 = [v49 webServiceDictionaryRepresentation];
      [v10 setObject:v50 forKey:@"billingAddress"];
    }

    v24 = v46;
    v9 = v45;
    v23 = v44;
    v5 = v57;
  }

  odiAssessment = self->_odiAssessment;
  if (odiAssessment)
  {
    [v10 setObject:odiAssessment forKey:@"odiAssessment"];
  }

  deviceMetadata = self->_deviceMetadata;
  if (deviceMetadata)
  {
    v53 = [(PKPaymentDeviceMetadata *)deviceMetadata dictionaryRepresentation];
    [v10 setObject:v53 forKey:@"deviceMetadata"];
  }

  if (v10)
  {
    v54 = [objc_opt_class() _HTTPBodyWithDictionary:v10];
    [v9 setHTTPBody:v54];
  }

  v36 = [v9 copy];

LABEL_32:

  return v36;
}

@end