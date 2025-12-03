@interface PKPaymentServiceProviderPerformPaymentRequest
- (void)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information webService:(id)service completion:(id)completion;
@end

@implementation PKPaymentServiceProviderPerformPaymentRequest

- (void)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information webService:(id)service completion:(id)completion
{
  v43[6] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v43[0] = @"devices";
  v43[1] = identifierCopy;
  v38 = identifierCopy;
  v43[2] = @"passes";
  pass = self->_pass;
  serviceCopy = service;
  informationCopy = information;
  lCopy = l;
  passTypeIdentifier = [(PKPass *)pass passTypeIdentifier];
  v43[3] = passTypeIdentifier;
  serialNumber = [(PKPass *)self->_pass serialNumber];
  v43[4] = serialNumber;
  v43[5] = @"performPayment";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:6];
  v21 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v20 queryParameters:0 appleAccountInformation:informationCopy];

  [v21 setHTTPMethod:@"POST"];
  [v21 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
  authorizationHeader = [informationCopy authorizationHeader];

  [v21 setValue:authorizationHeader forHTTPHeaderField:@"Authorization"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  nonce = self->_nonce;
  if (nonce)
  {
    hexEncoding = [(NSData *)nonce hexEncoding];
    [dictionary setObject:hexEncoding forKeyedSubscript:@"nOnce"];
  }

  serviceProviderOrder = [(PKPaymentServiceProviderPerformPaymentRequest *)self serviceProviderOrder];
  dictionaryRepresentation = [serviceProviderOrder dictionaryRepresentation];

  if (dictionaryRepresentation)
  {
    [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"order"];
  }

  if (_os_feature_enabled_impl())
  {
    deviceAssessments = self->_deviceAssessments;
    if (deviceAssessments)
    {
      [dictionary setObject:deviceAssessments forKeyedSubscript:@"deviceAssessments"];
    }

    shippingAddressHash = self->_shippingAddressHash;
    if (shippingAddressHash)
    {
      [dictionary setObject:shippingAddressHash forKeyedSubscript:@"shippingAddressHash"];
    }
  }

  targetDeviceSerialNumber = self->_targetDeviceSerialNumber;
  if (targetDeviceSerialNumber)
  {
    [dictionary setObject:targetDeviceSerialNumber forKeyedSubscript:@"targetDeviceSerialNumber"];
  }

  v31 = PKPaymentCryptogramTypeToString(self->_cryptogramType);
  [dictionary setObject:v31 forKeyedSubscript:@"cryptogramType"];

  v32 = [objc_opt_class() _HTTPBodyWithDictionary:dictionary];
  [v21 setHTTPBody:v32];

  hTTPBody = [v21 HTTPBody];
  sHA256Hash = [hTTPBody SHA256Hash];

  targetDevice = [serviceCopy targetDevice];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __138__PKPaymentServiceProviderPerformPaymentRequest__urlRequestWithServiceURL_deviceIdentifier_appleAccountInformation_webService_completion___block_invoke;
  v40[3] = &unk_1E79C4608;
  v41 = v21;
  v42 = completionCopy;
  v36 = completionCopy;
  v37 = v21;
  [targetDevice paymentWebService:serviceCopy signData:sHA256Hash signatureEntanglementMode:0 withCompletionHandler:v40];
}

uint64_t __138__PKPaymentServiceProviderPerformPaymentRequest__urlRequestWithServiceURL_deviceIdentifier_appleAccountInformation_webService_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v6 certificates];
  v9 = [v8 certificateOfType:0];
  [v5 setValue:v9 forHTTPHeaderField:@"CASD-ECC"];

  v10 = *(a1 + 32);
  v11 = [v6 certificates];

  v12 = [v11 certificateOfType:1];
  [v10 setValue:v12 forHTTPHeaderField:@"CASD-RSA"];

  v13 = *(a1 + 32);
  v14 = [v7 base64EncodedStringWithOptions:0];

  [v13 setValue:v14 forHTTPHeaderField:@"PayloadSignature"];
  result = *(a1 + 40);
  if (result)
  {
    v16 = *(result + 16);

    return v16();
  }

  return result;
}

@end