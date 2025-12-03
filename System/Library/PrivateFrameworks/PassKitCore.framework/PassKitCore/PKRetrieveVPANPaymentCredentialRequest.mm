@interface PKRetrieveVPANPaymentCredentialRequest
- (NSArray)endpointComponents;
- (PKRetrieveVPANPaymentCredentialRequest)initWithPaymentPass:(id)pass vpanIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier nonce:(id)nonce encryptionFields:(id)fields merchantHost:(id)host;
- (void)_urlRequestWithServiceURL:(id)l rewrapData:(id)data appleAccountInformation:(id)information webService:(id)service completion:(id)completion;
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

- (PKRetrieveVPANPaymentCredentialRequest)initWithPaymentPass:(id)pass vpanIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier nonce:(id)nonce encryptionFields:(id)fields merchantHost:(id)host
{
  passCopy = pass;
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  nonceCopy = nonce;
  fieldsCopy = fields;
  hostCopy = host;
  v32.receiver = self;
  v32.super_class = PKRetrieveVPANPaymentCredentialRequest;
  v21 = [(PKOverlayableWebServiceRequest *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_paymentPass, pass);
    v23 = [identifierCopy copy];
    vpanIdentifier = v22->_vpanIdentifier;
    v22->_vpanIdentifier = v23;

    v25 = [deviceIdentifierCopy copy];
    deviceIdentifier = v22->_deviceIdentifier;
    v22->_deviceIdentifier = v25;

    v27 = [nonceCopy copy];
    nonce = v22->_nonce;
    v22->_nonce = v27;

    objc_storeStrong(&v22->_encryptionFields, fields);
    v29 = [hostCopy copy];
    merchantHost = v22->_merchantHost;
    v22->_merchantHost = v29;
  }

  return v22;
}

- (void)_urlRequestWithServiceURL:(id)l rewrapData:(id)data appleAccountInformation:(id)information webService:(id)service completion:(id)completion
{
  dataCopy = data;
  serviceCopy = service;
  completionCopy = completion;
  informationCopy = information;
  lCopy = l;
  endpointComponents = [(PKRetrieveVPANPaymentCredentialRequest *)self endpointComponents];
  v18 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"1" endpointComponents:endpointComponents queryParameters:0 appleAccountInformation:informationCopy];

  [v18 setHTTPMethod:@"POST"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_vpanIdentifier forKeyedSubscript:@"virtualCardNumberIdentifier"];
  primaryAccountIdentifier = [(PKSecureElementPass *)self->_paymentPass primaryAccountIdentifier];
  [dictionary setObject:primaryAccountIdentifier forKeyedSubscript:@"primaryAccountIdentifier"];

  [dictionary setObject:self->_nonce forKeyedSubscript:@"nOnce"];
  merchantHost = self->_merchantHost;
  if (merchantHost)
  {
    [dictionary setObject:merchantHost forKeyedSubscript:@"merchantDomain"];
  }

  dictionaryRepresentation = [(PKVirtualCardEncryptionFields *)self->_encryptionFields dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"virtualCardEncryptionFields"];

  serialNumber = [(PKPass *)self->_paymentPass serialNumber];
  [dictionary setObject:serialNumber forKeyedSubscript:@"passSerialNumber"];

  if (dataCopy)
  {
    platformData = [dataCopy platformData];
    hexEncoding = [platformData hexEncoding];
    [dictionary setObject:hexEncoding forKeyedSubscript:@"pairedSEP"];

    platformDataSignature = [dataCopy platformDataSignature];
    hexEncoding2 = [platformDataSignature hexEncoding];
    [dictionary setObject:hexEncoding2 forKeyedSubscript:@"pairedSEPSignature"];
  }

  v28 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v18 setHTTPBody:v28];

  hTTPBody = [v18 HTTPBody];
  sHA256Hash = [hTTPBody SHA256Hash];

  if (serviceCopy)
  {
    targetDevice = [serviceCopy targetDevice];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __125__PKRetrieveVPANPaymentCredentialRequest__urlRequestWithServiceURL_rewrapData_appleAccountInformation_webService_completion___block_invoke;
    v32[3] = &unk_1E79C4608;
    v33 = v18;
    v34 = completionCopy;
    [targetDevice paymentWebService:serviceCopy signData:sHA256Hash signatureEntanglementMode:0 withCompletionHandler:v32];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v18);
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