@interface PKPaymentWebServiceSecureRequestBuilder
- (PKPaymentWebServiceSecureRequestBuilder)initWithRequestBuilder:(id)a3 devSigned:(BOOL)a4 certificates:(id)a5 deviceData:(id)a6;
- (id)createEncryptedDictionary:(id)a3 encryptedContentKey:(id)a4;
- (id)createEncryptedDictionaryWithData:(id)a3 encryptedContentKey:(id)a4;
- (id)createEncryptedDictionaryWithData:(id)a3 encryptedContentKey:(id)a4 scheme:(id)a5 certificates:(id)a6;
- (void)_encryptDictionary:(id)a3 intoDictionary:(id)a4 encryptedContentKey:(id)a5;
- (void)_encryptedData:(id)a3 intoDictionary:(id)a4 encryptedContentKey:(id)a5 scheme:(id)a6 certificates:(id)a7;
- (void)configureOverlayRequest:(id)a3 urlRequest:(id)a4 secureDictionary:(id)a5 dictionary:(id)a6;
- (void)insertFraudDeviceForField:(unint64_t)a3 dictionary:(id)a4;
@end

@implementation PKPaymentWebServiceSecureRequestBuilder

- (PKPaymentWebServiceSecureRequestBuilder)initWithRequestBuilder:(id)a3 devSigned:(BOOL)a4 certificates:(id)a5 deviceData:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [v13 brokerURL];
  v15 = [v13 deviceID];
  v16 = [v13 appleAccountInformation];

  v19.receiver = self;
  v19.super_class = PKPaymentWebServiceSecureRequestBuilder;
  v17 = [(PKPaymentWebServiceRequestBuilder *)&v19 initWithBrokerURL:v14 deviceID:v15 appleAccountInformation:v16];

  if (v17)
  {
    v17->_devSigned = a4;
    objc_storeStrong(&v17->_certificates, a5);
    objc_storeStrong(&v17->_deviceData, a6);
  }

  return v17;
}

- (void)insertFraudDeviceForField:(unint64_t)a3 dictionary:(id)a4
{
  v4 = a3;
  v12 = a4;
  if ((v4 & 0x20) != 0)
  {
    v8 = [(PKPaymentDeviceMetadata *)self->_deviceData phoneNumber];
    [v12 setObject:v8 forKeyedSubscript:@"devicePhoneNumber"];

    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v9 = [(PKPaymentDeviceMetadata *)self->_deviceData signedPhoneNumber];
  [v12 setObject:v9 forKeyedSubscript:@"signedDevicePhoneNumber"];

  v10 = [(PKPaymentDeviceMetadata *)self->_deviceData signedPhoneNumberVersion];
  [v12 setObject:v10 forKeyedSubscript:@"signedDevicePhoneNumberVersion"];

  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v11 = [(PKPaymentDeviceMetadata *)self->_deviceData deviceName];
  [v12 setObject:v11 forKeyedSubscript:@"deviceName"];

  if (v4 < 0)
  {
LABEL_5:
    v6 = [(PKPaymentDeviceMetadata *)self->_deviceData extensiveLatitude];
    [v12 setObject:v6 forKeyedSubscript:@"extensiveLatitude"];

    v7 = [(PKPaymentDeviceMetadata *)self->_deviceData extensiveLongitude];
    [v12 setObject:v7 forKeyedSubscript:@"extensiveLongitude"];
  }

LABEL_6:
}

- (void)configureOverlayRequest:(id)a3 urlRequest:(id)a4 secureDictionary:(id)a5 dictionary:(id)a6
{
  v18 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 mutableCopy];
  v14 = [v12 mutableCopy];
  if ([v13 count])
  {
    [v18 _applySecureOverlayToDictionary:v13];
    [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptDictionary:v13 intoDictionary:v14 encryptedContentKey:@"encryptedCardData"];
  }

  v15 = objc_autoreleasePoolPush();
  [v18 _applyOverlayToDictionary:v14];
  [v18 setOverlayParameters:v14];
  [v18 _setOverriddenKeys:&unk_1F23B4490];
  [v18 setRequiresConfigurationForRetry:1];
  [v18 setRequiresConfigurationForRedirect:1];
  v16 = [v18 archivedData];
  if (v16)
  {
    [MEMORY[0x1E695AC60] setProperty:v16 forKey:@"overlayRequest" inRequest:v10];
  }

  v17 = [(PKWebServiceRequest *)PKOverlayableWebServiceRequest _HTTPBodyWithDictionary:v14];
  [v10 setHTTPBody:v17];

  objc_autoreleasePoolPop(v15);
}

- (id)createEncryptedDictionary:(id)a3 encryptedContentKey:(id)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptDictionary:v8 intoDictionary:v9 encryptedContentKey:v7];

  v10 = [v9 copy];

  return v10;
}

- (id)createEncryptedDictionaryWithData:(id)a3 encryptedContentKey:(id)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptedData:v8 intoDictionary:v9 encryptedContentKey:v7 scheme:@"EV_ECC_v3" certificates:self->_certificates];

  v10 = [v9 copy];

  return v10;
}

- (id)createEncryptedDictionaryWithData:(id)a3 encryptedContentKey:(id)a4 scheme:(id)a5 certificates:(id)a6
{
  v10 = MEMORY[0x1E695DF90];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v10);
  [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptedData:v14 intoDictionary:v15 encryptedContentKey:v13 scheme:v12 certificates:v11];

  v16 = [v15 copy];

  return v16;
}

- (void)_encryptDictionary:(id)a3 intoDictionary:(id)a4 encryptedContentKey:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v8 allKeys];
    v14 = [v12 stringWithFormat:@"Encrypted Payment Request Fields: %@", v13];
    *buf = 138477827;
    v17 = v14;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
  }

  v15 = [(PKWebServiceRequest *)PKOverlayableWebServiceRequest _HTTPBodyWithDictionary:v8];
  [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptedData:v15 intoDictionary:v9 encryptedContentKey:v10 scheme:@"EV_ECC_v1-ASN.1" certificates:self->_certificates];
}

- (void)_encryptedData:(id)a3 intoDictionary:(id)a4 encryptedContentKey:(id)a5 scheme:(id)a6 certificates:(id)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v15;
  v18 = v17;
  if (@"EV_ECC_v1-ASN.1" == v17)
  {
  }

  else
  {
    if (!v17 || !@"EV_ECC_v1-ASN.1")
    {

      goto LABEL_10;
    }

    v19 = [(__CFString *)v17 isEqualToString:@"EV_ECC_v1-ASN.1"];

    if (!v19)
    {
LABEL_10:
      v25 = v18;
      v26 = v25;
      if (@"EV_ECC_v3" == v25)
      {
      }

      else
      {
        if (!v18 || !@"EV_ECC_v3")
        {

          goto LABEL_25;
        }

        v27 = [(__CFString *)v25 isEqualToString:@"EV_ECC_v3"];

        if (!v27)
        {
LABEL_25:
          v28 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v37 = "Error: Failed to generate encryptedCardData due to unsupported scheme.";
LABEL_29:
            _os_log_error_impl(&dword_1AD337000, v28, OS_LOG_TYPE_ERROR, v37, buf, 2u);
            goto LABEL_33;
          }

          goto LABEL_33;
        }
      }

      v40 = 0;
      PKPaymentCreateAndValidateTrustWithCerts(v16, &v40, self->_devSigned);
      if (v40)
      {
        PKSecTrustGetCertificateAtIndex(v40, 0);
        v28 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
        devSigned = self->_devSigned;
        v38 = 0;
        v39 = 0;
        v30 = PKECCV3EncryptDataWithCertChain(v12, v16, devSigned, &v39, &v38);
        v31 = v39;
        v32 = v38;
        v33 = v32;
        if (v30 && v31 && !v32)
        {
          v34 = [v30 base64EncodedStringWithOptions:0];
          [v13 setObject:v34 forKeyedSubscript:v14];

          v33 = 0;
          [v13 setObject:@"EV_ECC_v3" forKeyedSubscript:@"encryptionVersion"];
          v35 = [v28 hexEncoding];
          [v13 setObject:v35 forKeyedSubscript:@"publicKeyHash"];

          v36 = [v31 base64EncodedStringWithOptions:0];
          [v13 setObject:v36 forKeyedSubscript:@"ephemeralPublicKey"];
        }

        else
        {
          v36 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v43 = v33;
            _os_log_error_impl(&dword_1AD337000, v36, OS_LOG_TYPE_ERROR, "Error: Failed to generate encryptedCardData with error: %@", buf, 0xCu);
          }
        }

        goto LABEL_33;
      }

      v28 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v37 = "Error: Failed to generate trustRef for encryptedCardData";
        goto LABEL_29;
      }

LABEL_33:

      goto LABEL_34;
    }
  }

  v20 = self->_devSigned;
  v41 = 0;
  v21 = PKPaymentEncryptDataWithCertChain(v12, v16, v20, &v41);
  v22 = v41;
  if (v21)
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v21 encoding:4];
    [v13 setObject:v23 forKeyedSubscript:v14];

    [v13 setObject:@"EV_ECC_v1-ASN.1" forKeyedSubscript:@"encryptionVersion"];
    v24 = [v22 hexEncoding];
    [v13 setObject:v24 forKeyedSubscript:@"publicKeyHash"];
  }

  else
  {
    v24 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v24, OS_LOG_TYPE_ERROR, "Error: Failed to generate cards on file request encryptedCardData.", buf, 2u);
    }
  }

LABEL_34:
}

@end