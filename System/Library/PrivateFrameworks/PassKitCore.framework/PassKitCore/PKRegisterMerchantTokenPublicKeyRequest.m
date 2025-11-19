@interface PKRegisterMerchantTokenPublicKeyRequest
- (void)_urlRequestWithServiceURL:(id)a3 secureElementID:(id)a4 appleAccountInformation:(id)a5 webService:(id)a6 completion:(id)a7;
@end

@implementation PKRegisterMerchantTokenPublicKeyRequest

- (void)_urlRequestWithServiceURL:(id)a3 secureElementID:(id)a4 appleAccountInformation:(id)a5 webService:(id)a6 completion:(id)a7
{
  v27[3] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v27[0] = @"devices";
  v27[1] = a4;
  v27[2] = @"registerMerchantTokenKey";
  v13 = MEMORY[0x1E695DEC8];
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [v13 arrayWithObjects:v27 count:3];
  v19 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v17 version:@"3" endpointComponents:v18 queryParameters:MEMORY[0x1E695E0F8] appleAccountInformation:v15];

  [v19 setHTTPMethod:@"POST"];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v20 setObject:self->_primaryAccountIdentifier forKeyedSubscript:@"fpanId"];
  [v20 setObject:self->_merchantTokenIdentifier forKeyedSubscript:@"merchantTokenIdentifier"];
  v21 = [(NSData *)self->_currentMerchantTokenPublicKeyHash hexEncoding];
  [v20 setObject:v21 forKeyedSubscript:@"currentMerchantTokenPublicKeyHash"];

  v22 = [(NSData *)self->_merchantTokenPublicKey base64EncodedStringWithOptions:0];
  [v20 setObject:v22 forKeyedSubscript:@"merchantTokenPublicKey"];

  v23 = [objc_opt_class() _HTTPBodyWithDictionary:v20];
  [v19 setHTTPBody:v23];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __131__PKRegisterMerchantTokenPublicKeyRequest__urlRequestWithServiceURL_secureElementID_appleAccountInformation_webService_completion___block_invoke;
  v25[3] = &unk_1E79DAF50;
  v26 = v12;
  v24 = v12;
  [(PKPaymentWebServiceRequest *)self _signRequest:v19 webService:v14 completion:v25];
}

@end