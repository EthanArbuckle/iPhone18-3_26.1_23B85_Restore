@interface PKPaymentWebServiceSecureRequestBuilder
- (PKPaymentWebServiceSecureRequestBuilder)initWithRequestBuilder:(id)builder devSigned:(BOOL)signed certificates:(id)certificates deviceData:(id)data;
- (id)createEncryptedDictionary:(id)dictionary encryptedContentKey:(id)key;
- (id)createEncryptedDictionaryWithData:(id)data encryptedContentKey:(id)key;
- (id)createEncryptedDictionaryWithData:(id)data encryptedContentKey:(id)key scheme:(id)scheme certificates:(id)certificates;
- (void)_encryptDictionary:(id)dictionary intoDictionary:(id)intoDictionary encryptedContentKey:(id)key;
- (void)_encryptedData:(id)data intoDictionary:(id)dictionary encryptedContentKey:(id)key scheme:(id)scheme certificates:(id)certificates;
- (void)configureOverlayRequest:(id)request urlRequest:(id)urlRequest secureDictionary:(id)dictionary dictionary:(id)a6;
- (void)insertFraudDeviceForField:(unint64_t)field dictionary:(id)dictionary;
@end

@implementation PKPaymentWebServiceSecureRequestBuilder

- (PKPaymentWebServiceSecureRequestBuilder)initWithRequestBuilder:(id)builder devSigned:(BOOL)signed certificates:(id)certificates deviceData:(id)data
{
  certificatesCopy = certificates;
  dataCopy = data;
  builderCopy = builder;
  brokerURL = [builderCopy brokerURL];
  deviceID = [builderCopy deviceID];
  appleAccountInformation = [builderCopy appleAccountInformation];

  v19.receiver = self;
  v19.super_class = PKPaymentWebServiceSecureRequestBuilder;
  v17 = [(PKPaymentWebServiceRequestBuilder *)&v19 initWithBrokerURL:brokerURL deviceID:deviceID appleAccountInformation:appleAccountInformation];

  if (v17)
  {
    v17->_devSigned = signed;
    objc_storeStrong(&v17->_certificates, certificates);
    objc_storeStrong(&v17->_deviceData, data);
  }

  return v17;
}

- (void)insertFraudDeviceForField:(unint64_t)field dictionary:(id)dictionary
{
  fieldCopy = field;
  dictionaryCopy = dictionary;
  if ((fieldCopy & 0x20) != 0)
  {
    phoneNumber = [(PKPaymentDeviceMetadata *)self->_deviceData phoneNumber];
    [dictionaryCopy setObject:phoneNumber forKeyedSubscript:@"devicePhoneNumber"];

    if ((fieldCopy & 0x40) == 0)
    {
LABEL_3:
      if ((fieldCopy & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((fieldCopy & 0x40) == 0)
  {
    goto LABEL_3;
  }

  signedPhoneNumber = [(PKPaymentDeviceMetadata *)self->_deviceData signedPhoneNumber];
  [dictionaryCopy setObject:signedPhoneNumber forKeyedSubscript:@"signedDevicePhoneNumber"];

  signedPhoneNumberVersion = [(PKPaymentDeviceMetadata *)self->_deviceData signedPhoneNumberVersion];
  [dictionaryCopy setObject:signedPhoneNumberVersion forKeyedSubscript:@"signedDevicePhoneNumberVersion"];

  if ((fieldCopy & 0x10) == 0)
  {
LABEL_4:
    if ((fieldCopy & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  deviceName = [(PKPaymentDeviceMetadata *)self->_deviceData deviceName];
  [dictionaryCopy setObject:deviceName forKeyedSubscript:@"deviceName"];

  if (fieldCopy < 0)
  {
LABEL_5:
    extensiveLatitude = [(PKPaymentDeviceMetadata *)self->_deviceData extensiveLatitude];
    [dictionaryCopy setObject:extensiveLatitude forKeyedSubscript:@"extensiveLatitude"];

    extensiveLongitude = [(PKPaymentDeviceMetadata *)self->_deviceData extensiveLongitude];
    [dictionaryCopy setObject:extensiveLongitude forKeyedSubscript:@"extensiveLongitude"];
  }

LABEL_6:
}

- (void)configureOverlayRequest:(id)request urlRequest:(id)urlRequest secureDictionary:(id)dictionary dictionary:(id)a6
{
  requestCopy = request;
  urlRequestCopy = urlRequest;
  dictionaryCopy = dictionary;
  v12 = a6;
  v13 = [dictionaryCopy mutableCopy];
  v14 = [v12 mutableCopy];
  if ([v13 count])
  {
    [requestCopy _applySecureOverlayToDictionary:v13];
    [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptDictionary:v13 intoDictionary:v14 encryptedContentKey:@"encryptedCardData"];
  }

  v15 = objc_autoreleasePoolPush();
  [requestCopy _applyOverlayToDictionary:v14];
  [requestCopy setOverlayParameters:v14];
  [requestCopy _setOverriddenKeys:&unk_1F23B4490];
  [requestCopy setRequiresConfigurationForRetry:1];
  [requestCopy setRequiresConfigurationForRedirect:1];
  archivedData = [requestCopy archivedData];
  if (archivedData)
  {
    [MEMORY[0x1E695AC60] setProperty:archivedData forKey:@"overlayRequest" inRequest:urlRequestCopy];
  }

  v17 = [(PKWebServiceRequest *)PKOverlayableWebServiceRequest _HTTPBodyWithDictionary:v14];
  [urlRequestCopy setHTTPBody:v17];

  objc_autoreleasePoolPop(v15);
}

- (id)createEncryptedDictionary:(id)dictionary encryptedContentKey:(id)key
{
  v6 = MEMORY[0x1E695DF90];
  keyCopy = key;
  dictionaryCopy = dictionary;
  v9 = objc_alloc_init(v6);
  [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptDictionary:dictionaryCopy intoDictionary:v9 encryptedContentKey:keyCopy];

  v10 = [v9 copy];

  return v10;
}

- (id)createEncryptedDictionaryWithData:(id)data encryptedContentKey:(id)key
{
  v6 = MEMORY[0x1E695DF90];
  keyCopy = key;
  dataCopy = data;
  v9 = objc_alloc_init(v6);
  [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptedData:dataCopy intoDictionary:v9 encryptedContentKey:keyCopy scheme:@"EV_ECC_v3" certificates:self->_certificates];

  v10 = [v9 copy];

  return v10;
}

- (id)createEncryptedDictionaryWithData:(id)data encryptedContentKey:(id)key scheme:(id)scheme certificates:(id)certificates
{
  v10 = MEMORY[0x1E695DF90];
  certificatesCopy = certificates;
  schemeCopy = scheme;
  keyCopy = key;
  dataCopy = data;
  v15 = objc_alloc_init(v10);
  [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptedData:dataCopy intoDictionary:v15 encryptedContentKey:keyCopy scheme:schemeCopy certificates:certificatesCopy];

  v16 = [v15 copy];

  return v16;
}

- (void)_encryptDictionary:(id)dictionary intoDictionary:(id)intoDictionary encryptedContentKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  intoDictionaryCopy = intoDictionary;
  keyCopy = key;
  v11 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x1E696AEC0];
    allKeys = [dictionaryCopy allKeys];
    v14 = [v12 stringWithFormat:@"Encrypted Payment Request Fields: %@", allKeys];
    *buf = 138477827;
    v17 = v14;
    _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "%{private}@", buf, 0xCu);
  }

  v15 = [(PKWebServiceRequest *)PKOverlayableWebServiceRequest _HTTPBodyWithDictionary:dictionaryCopy];
  [(PKPaymentWebServiceSecureRequestBuilder *)self _encryptedData:v15 intoDictionary:intoDictionaryCopy encryptedContentKey:keyCopy scheme:@"EV_ECC_v1-ASN.1" certificates:self->_certificates];
}

- (void)_encryptedData:(id)data intoDictionary:(id)dictionary encryptedContentKey:(id)key scheme:(id)scheme certificates:(id)certificates
{
  v44 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dictionaryCopy = dictionary;
  keyCopy = key;
  schemeCopy = scheme;
  certificatesCopy = certificates;
  v17 = schemeCopy;
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
      PKPaymentCreateAndValidateTrustWithCerts(certificatesCopy, &v40, self->_devSigned);
      if (v40)
      {
        PKSecTrustGetCertificateAtIndex(v40, 0);
        v28 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
        devSigned = self->_devSigned;
        v38 = 0;
        v39 = 0;
        v30 = PKECCV3EncryptDataWithCertChain(dataCopy, certificatesCopy, devSigned, &v39, &v38);
        v31 = v39;
        v32 = v38;
        v33 = v32;
        if (v30 && v31 && !v32)
        {
          v34 = [v30 base64EncodedStringWithOptions:0];
          [dictionaryCopy setObject:v34 forKeyedSubscript:keyCopy];

          v33 = 0;
          [dictionaryCopy setObject:@"EV_ECC_v3" forKeyedSubscript:@"encryptionVersion"];
          hexEncoding = [v28 hexEncoding];
          [dictionaryCopy setObject:hexEncoding forKeyedSubscript:@"publicKeyHash"];

          v36 = [v31 base64EncodedStringWithOptions:0];
          [dictionaryCopy setObject:v36 forKeyedSubscript:@"ephemeralPublicKey"];
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
  v21 = PKPaymentEncryptDataWithCertChain(dataCopy, certificatesCopy, v20, &v41);
  v22 = v41;
  if (v21)
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v21 encoding:4];
    [dictionaryCopy setObject:v23 forKeyedSubscript:keyCopy];

    [dictionaryCopy setObject:@"EV_ECC_v1-ASN.1" forKeyedSubscript:@"encryptionVersion"];
    hexEncoding2 = [v22 hexEncoding];
    [dictionaryCopy setObject:hexEncoding2 forKeyedSubscript:@"publicKeyHash"];
  }

  else
  {
    hexEncoding2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(hexEncoding2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, hexEncoding2, OS_LOG_TYPE_ERROR, "Error: Failed to generate cards on file request encryptedCardData.", buf, 2u);
    }
  }

LABEL_34:
}

@end