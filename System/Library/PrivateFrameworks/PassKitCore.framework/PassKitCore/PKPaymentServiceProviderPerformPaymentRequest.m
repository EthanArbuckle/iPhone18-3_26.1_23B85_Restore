@interface PKPaymentServiceProviderPerformPaymentRequest
- (void)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5 webService:(id)a6 completion:(id)a7;
@end

@implementation PKPaymentServiceProviderPerformPaymentRequest

- (void)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5 webService:(id)a6 completion:(id)a7
{
  v43[6] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a7;
  v43[0] = @"devices";
  v43[1] = v12;
  v38 = v12;
  v43[2] = @"passes";
  pass = self->_pass;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = [(PKPass *)pass passTypeIdentifier];
  v43[3] = v18;
  v19 = [(PKPass *)self->_pass serialNumber];
  v43[4] = v19;
  v43[5] = @"performPayment";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:6];
  v21 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v17 endpointComponents:v20 queryParameters:0 appleAccountInformation:v16];

  [v21 setHTTPMethod:@"POST"];
  [v21 setValue:@"application/binary" forHTTPHeaderField:@"Content-Type"];
  v22 = [v16 authorizationHeader];

  [v21 setValue:v22 forHTTPHeaderField:@"Authorization"];
  v23 = [MEMORY[0x1E695DF90] dictionary];
  nonce = self->_nonce;
  if (nonce)
  {
    v25 = [(NSData *)nonce hexEncoding];
    [v23 setObject:v25 forKeyedSubscript:@"nOnce"];
  }

  v26 = [(PKPaymentServiceProviderPerformPaymentRequest *)self serviceProviderOrder];
  v27 = [v26 dictionaryRepresentation];

  if (v27)
  {
    [v23 setObject:v27 forKeyedSubscript:@"order"];
  }

  if (_os_feature_enabled_impl())
  {
    deviceAssessments = self->_deviceAssessments;
    if (deviceAssessments)
    {
      [v23 setObject:deviceAssessments forKeyedSubscript:@"deviceAssessments"];
    }

    shippingAddressHash = self->_shippingAddressHash;
    if (shippingAddressHash)
    {
      [v23 setObject:shippingAddressHash forKeyedSubscript:@"shippingAddressHash"];
    }
  }

  targetDeviceSerialNumber = self->_targetDeviceSerialNumber;
  if (targetDeviceSerialNumber)
  {
    [v23 setObject:targetDeviceSerialNumber forKeyedSubscript:@"targetDeviceSerialNumber"];
  }

  v31 = PKPaymentCryptogramTypeToString(self->_cryptogramType);
  [v23 setObject:v31 forKeyedSubscript:@"cryptogramType"];

  v32 = [objc_opt_class() _HTTPBodyWithDictionary:v23];
  [v21 setHTTPBody:v32];

  v33 = [v21 HTTPBody];
  v34 = [v33 SHA256Hash];

  v35 = [v15 targetDevice];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __138__PKPaymentServiceProviderPerformPaymentRequest__urlRequestWithServiceURL_deviceIdentifier_appleAccountInformation_webService_completion___block_invoke;
  v40[3] = &unk_1E79C4608;
  v41 = v21;
  v42 = v13;
  v36 = v13;
  v37 = v21;
  [v35 paymentWebService:v15 signData:v34 signatureEntanglementMode:0 withCompletionHandler:v40];
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