@interface PKPeerPaymentDocumentSubmissionRequest
- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4;
@end

@implementation PKPeerPaymentDocumentSubmissionRequest

- (id)_urlRequestWithServiceURL:(id)a3 appleAccountInformation:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v9 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    *buf = 138543618;
    v43 = v27;
    v44 = 2082;
    v45 = "url";
    v28 = "Request %{public}@ missing parameter '%{public}s'.";
LABEL_26:
    v33 = v9;
    v34 = 22;
    goto LABEL_27;
  }

  if (!v7)
  {
    v9 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v29 = objc_opt_class();
    v27 = NSStringFromClass(v29);
    *buf = 138543618;
    v43 = v27;
    v44 = 2082;
    v45 = "appleAccountInformation";
    v28 = "Request %{public}@ missing parameter '%{public}s'.";
    goto LABEL_26;
  }

  if (!self->_frontImageData)
  {
    v9 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v30 = objc_opt_class();
    v27 = NSStringFromClass(v30);
    *buf = 138543618;
    v43 = v27;
    v44 = 2082;
    v45 = "_frontImageData";
    v28 = "Request %{public}@ missing parameter '%{public}s'.";
    goto LABEL_26;
  }

  if (!self->_documentCountryCode)
  {
    v9 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    v31 = objc_opt_class();
    v27 = NSStringFromClass(v31);
    *buf = 138543618;
    v43 = v27;
    v44 = 2082;
    v45 = "_documentCountryCode";
    v28 = "Request %{public}@ missing parameter '%{public}s'.";
    goto LABEL_26;
  }

  if (!self->_documentType)
  {
    v9 = PKLogFacilityTypeGetObject(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v27 = NSStringFromClass(v32);
      *buf = 138543618;
      v43 = v27;
      v44 = 2082;
      v45 = "_documentType";
      v28 = "Request %{public}@ missing parameter '%{public}s'.";
      goto LABEL_26;
    }

LABEL_29:
    v35 = 0;
    goto LABEL_30;
  }

  v9 = [(PKPeerPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v6 endpointComponents:&unk_1F23B47A8 queryParameters:0 appleAccountInformation:v7];
  [v9 setHTTPMethod:@"POST"];
  [v9 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
  if (![(NSArray *)self->_certificates count])
  {
    v27 = PKLogFacilityTypeGetObject(0xCuLL);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v28 = "Error: Tried to submit document without certificates";
    v33 = v27;
    v34 = 2;
LABEL_27:
    _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, v28, buf, v34);
LABEL_28:

    goto LABEL_29;
  }

  v10 = 0x1E695D000uLL;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  frontImageData = self->_frontImageData;
  if (frontImageData)
  {
    v13 = [(NSData *)frontImageData base64EncodedStringWithOptions:0];
    [v11 setObject:v13 forKey:@"documentFrontImage"];
  }

  backImageData = self->_backImageData;
  if (backImageData)
  {
    v15 = [(NSData *)backImageData base64EncodedStringWithOptions:0];
    [v11 setObject:v15 forKey:@"documentBackImage"];
  }

  [v11 setObject:self->_documentCountryCode forKey:@"documentCountryCode"];
  v16 = PKPaymentDocumentTypeToString(self->_documentType);
  [v11 setObject:v16 forKey:@"documentType"];

  v17 = objc_autoreleasePoolPush();
  if (![v11 count])
  {
    v25 = 0;
LABEL_39:
    v24 = 0;
    goto LABEL_40;
  }

  v18 = PKLogFacilityTypeGetObject(0xCuLL);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = [v11 allKeys];
    v21 = [v19 stringWithFormat:@"Encrypted document data: %@", v20];
    *buf = 138477827;
    v43 = v21;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
  }

  v22 = [objc_opt_class() _HTTPBodyWithDictionary:v11];
  certificates = self->_certificates;
  v41 = 0;
  v24 = PKPeerPaymentEncryptDataWithCertChain(v22, certificates, &v41);
  v25 = v41;

  if (!v24)
  {
    v10 = 0x1E695D000uLL;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Error: Failed to generate peer payment document submission request encryptedDocumentData. This is bad!", buf, 2u);
    }

    goto LABEL_39;
  }

  v10 = 0x1E695D000;
LABEL_40:
  objc_autoreleasePoolPop(v17);
  v37 = [*(v10 + 3984) dictionary];
  if (v24)
  {
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v24 encoding:4];
    [v37 setObject:@"EV_ECC_v1-ASN.1" forKey:@"encryptionVersion"];
    [v37 setObject:v38 forKey:@"encryptedDocumentData"];
    v39 = [v25 hexEncoding];
    [v37 setObject:v39 forKey:@"publicKeyHash"];
  }

  v40 = [objc_opt_class() _HTTPBodyWithDictionary:v37];
  [v9 setHTTPBody:v40];

  v35 = [v9 copy];
LABEL_30:

  return v35;
}

@end