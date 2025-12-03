@interface PKAccountPaymentFundingDetails
- (BOOL)isEqual:(id)equal;
- (PKAccountPaymentFundingDetails)initWithDictionary:(id)dictionary;
- (id)_encryptedDataWithCertificatesResponse:(id)response publicKeyHash:(id *)hash;
- (id)hashComponentWithCertificatesResponse:(id)response;
- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)response;
- (id)jsonString;
@end

@implementation PKAccountPaymentFundingDetails

- (PKAccountPaymentFundingDetails)initWithDictionary:(id)dictionary
{
  v4.receiver = self;
  v4.super_class = PKAccountPaymentFundingDetails;
  return [(PKAccountPaymentFundingDetails *)&v4 init];
}

- (id)jsonString
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACB0];
  jsonDictionaryRepresentation = [(PKAccountPaymentFundingDetails *)self jsonDictionaryRepresentation];
  v9 = 0;
  v4 = [v2 dataWithJSONObject:jsonDictionaryRepresentation options:2 error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Error forming json dictionary for CloudKit with error: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
  }

  return v7;
}

- (id)jsonDictionaryRepresentationWithCertificatesResponse:(id)response
{
  responseCopy = response;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_encryptedData || (v14 = 0, [(PKAccountPaymentFundingDetails *)self _encryptedDataWithCertificatesResponse:responseCopy publicKeyHash:&v14], v6 = objc_claimAutoreleasedReturnValue(), v7 = v14, encryptedData = self->_encryptedData, self->_encryptedData = v6, encryptedData, publicKeyHash = self->_publicKeyHash, self->_publicKeyHash = v7, publicKeyHash, self->_encryptedData))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:self->_encryptedData encoding:4];
    [dictionary setObject:v10 forKeyedSubscript:@"data"];
    hexEncoding = [(NSData *)self->_publicKeyHash hexEncoding];
    [dictionary setObject:hexEncoding forKeyedSubscript:@"publicKeyHash"];

    [dictionary setObject:@"EV_ECC_v1-ASN.1" forKeyedSubscript:@"encryptionVersion"];
  }

  v12 = [dictionary copy];

  return v12;
}

- (id)hashComponentWithCertificatesResponse:(id)response
{
  responseCopy = response;
  encryptedData = self->_encryptedData;
  if (encryptedData || (v13 = 0, [(PKAccountPaymentFundingDetails *)self _encryptedDataWithCertificatesResponse:responseCopy publicKeyHash:&v13], v6 = objc_claimAutoreleasedReturnValue(), v7 = v13, v8 = self->_encryptedData, self->_encryptedData = v6, v8, publicKeyHash = self->_publicKeyHash, self->_publicKeyHash = v7, publicKeyHash, (encryptedData = self->_encryptedData) != 0))
  {
    sHA256Hash = [(NSData *)encryptedData SHA256Hash];
    v11 = [sHA256Hash base64EncodedStringWithOptions:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_encryptedDataWithCertificatesResponse:(id)response publicKeyHash:(id *)hash
{
  v23 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  fundingDetailsUnencryptedDictionary = [(PKAccountPaymentFundingDetails *)self fundingDetailsUnencryptedDictionary];
  v8 = fundingDetailsUnencryptedDictionary;
  v9 = 0;
  if (!responseCopy || !fundingDetailsUnencryptedDictionary)
  {
    goto LABEL_14;
  }

  encryptionVersion = [responseCopy encryptionVersion];
  if (([encryptionVersion isEqualToString:@"EV_ECC_v1-ASN.1"] & 1) == 0)
  {

    goto LABEL_13;
  }

  v11 = [v8 count];

  if (!v11)
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v12 = +[PKPaymentWebService sharedService];
  context = [v12 context];
  devSigned = [context devSigned];

  if (devSigned)
  {
    v15 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v22 = v8;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Encrypting data for schedulePayment request: %{private}@", buf, 0xCu);
    }
  }

  v20 = 0;
  v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v8 options:1 error:&v20];
  v17 = v20;
  if (!v16)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Could not create data for %@: %@", objc_opt_class(), v17}];
  }

  encryptionCertificates = [responseCopy encryptionCertificates];
  v9 = PKFeatureEncryptDataWithCertChain(v16, encryptionCertificates, hash, 2);

LABEL_14:

  return v9;
}

@end