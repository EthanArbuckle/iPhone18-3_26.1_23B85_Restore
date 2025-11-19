@interface PKRetrieveVPANPaymentCredentialRequest
- (NSArray)endpointComponents;
- (PKRetrieveVPANPaymentCredentialRequest)initWithPaymentPass:(id)a3 vpanIdentifier:(id)a4 deviceIdentifier:(id)a5 nonce:(id)a6 encryptionFields:(id)a7 merchantHost:(id)a8;
- (void)_urlRequestWithServiceURL:(id)a3 rewrapData:(id)a4 appleAccountInformation:(id)a5 webService:(id)a6 completion:(id)a7;
@end

@implementation PKRetrieveVPANPaymentCredentialRequest

- (NSArray)endpointComponents
{
  v5[3] = *MEMORY[0x1E69E9840];
  deviceIdentifier = self->_deviceIdentifier;
  v5[0] = @"devices";
  v5[1] = deviceIdentifier;
  v5[2] = @"virtualCardPaymentCredential";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];

  return v3;
}

- (PKRetrieveVPANPaymentCredentialRequest)initWithPaymentPass:(id)a3 vpanIdentifier:(id)a4 deviceIdentifier:(id)a5 nonce:(id)a6 encryptionFields:(id)a7 merchantHost:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v32.receiver = self;
  v32.super_class = PKRetrieveVPANPaymentCredentialRequest;
  v21 = [(PKOverlayableWebServiceRequest *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_paymentPass, a3);
    v23 = [v16 copy];
    vpanIdentifier = v22->_vpanIdentifier;
    v22->_vpanIdentifier = v23;

    v25 = [v17 copy];
    deviceIdentifier = v22->_deviceIdentifier;
    v22->_deviceIdentifier = v25;

    v27 = [v18 copy];
    nonce = v22->_nonce;
    v22->_nonce = v27;

    objc_storeStrong(&v22->_encryptionFields, a7);
    v29 = [v20 copy];
    merchantHost = v22->_merchantHost;
    v22->_merchantHost = v29;
  }

  return v22;
}

- (void)_urlRequestWithServiceURL:(id)a3 rewrapData:(id)a4 appleAccountInformation:(id)a5 webService:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = a5;
  v16 = a3;
  v17 = [(PKRetrieveVPANPaymentCredentialRequest *)self endpointComponents];
  v18 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v16 version:@"1" endpointComponents:v17 queryParameters:0 appleAccountInformation:v15];

  [v18 setHTTPMethod:@"POST"];
  v19 = [MEMORY[0x1E695DF90] dictionary];
  [v19 setObject:self->_vpanIdentifier forKeyedSubscript:@"virtualCardNumberIdentifier"];
  v20 = [(PKSecureElementPass *)self->_paymentPass primaryAccountIdentifier];
  [v19 setObject:v20 forKeyedSubscript:@"primaryAccountIdentifier"];

  [v19 setObject:self->_nonce forKeyedSubscript:@"nOnce"];
  merchantHost = self->_merchantHost;
  if (merchantHost)
  {
    [v19 setObject:merchantHost forKeyedSubscript:@"merchantDomain"];
  }

  v22 = [(PKVirtualCardEncryptionFields *)self->_encryptionFields dictionaryRepresentation];
  [v19 setObject:v22 forKeyedSubscript:@"virtualCardEncryptionFields"];

  v23 = [(PKPass *)self->_paymentPass serialNumber];
  [v19 setObject:v23 forKeyedSubscript:@"passSerialNumber"];

  if (v12)
  {
    v24 = [v12 platformData];
    v25 = [v24 hexEncoding];
    [v19 setObject:v25 forKeyedSubscript:@"pairedSEP"];

    v26 = [v12 platformDataSignature];
    v27 = [v26 hexEncoding];
    [v19 setObject:v27 forKeyedSubscript:@"pairedSEPSignature"];
  }

  v28 = [objc_opt_class() _HTTPBodyWithDictionary:v19];
  [v18 setHTTPBody:v28];

  v29 = [v18 HTTPBody];
  v30 = [v29 SHA256Hash];

  if (v13)
  {
    v31 = [v13 targetDevice];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __125__PKRetrieveVPANPaymentCredentialRequest__urlRequestWithServiceURL_rewrapData_appleAccountInformation_webService_completion___block_invoke;
    v32[3] = &unk_1E79C4608;
    v33 = v18;
    v34 = v14;
    [v31 paymentWebService:v13 signData:v30 signatureEntanglementMode:0 withCompletionHandler:v32];
  }

  else if (v14)
  {
    (*(v14 + 2))(v14, v18);
  }
}

uint64_t __125__PKRetrieveVPANPaymentCredentialRequest__urlRequestWithServiceURL_rewrapData_appleAccountInformation_webService_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  PKUpdateURLRequestWithSignatureDataAndInfo(*(a1 + 32), a2, a3);
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

@end