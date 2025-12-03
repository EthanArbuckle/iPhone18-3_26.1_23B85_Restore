@interface PKRegisterMerchantTokenPublicKeyRequest
- (void)_urlRequestWithServiceURL:(id)l secureElementID:(id)d appleAccountInformation:(id)information webService:(id)service completion:(id)completion;
@end

@implementation PKRegisterMerchantTokenPublicKeyRequest

- (void)_urlRequestWithServiceURL:(id)l secureElementID:(id)d appleAccountInformation:(id)information webService:(id)service completion:(id)completion
{
  v27[3] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v27[0] = @"devices";
  v27[1] = d;
  v27[2] = @"registerMerchantTokenKey";
  v13 = MEMORY[0x1E695DEC8];
  serviceCopy = service;
  informationCopy = information;
  dCopy = d;
  lCopy = l;
  v18 = [v13 arrayWithObjects:v27 count:3];
  v19 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy version:@"3" endpointComponents:v18 queryParameters:MEMORY[0x1E695E0F8] appleAccountInformation:informationCopy];

  [v19 setHTTPMethod:@"POST"];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v20 setObject:self->_primaryAccountIdentifier forKeyedSubscript:@"fpanId"];
  [v20 setObject:self->_merchantTokenIdentifier forKeyedSubscript:@"merchantTokenIdentifier"];
  hexEncoding = [(NSData *)self->_currentMerchantTokenPublicKeyHash hexEncoding];
  [v20 setObject:hexEncoding forKeyedSubscript:@"currentMerchantTokenPublicKeyHash"];

  v22 = [(NSData *)self->_merchantTokenPublicKey base64EncodedStringWithOptions:0];
  [v20 setObject:v22 forKeyedSubscript:@"merchantTokenPublicKey"];

  v23 = [objc_opt_class() _HTTPBodyWithDictionary:v20];
  [v19 setHTTPBody:v23];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __131__PKRegisterMerchantTokenPublicKeyRequest__urlRequestWithServiceURL_secureElementID_appleAccountInformation_webService_completion___block_invoke;
  v25[3] = &unk_1E79DAF50;
  v26 = completionCopy;
  v24 = completionCopy;
  [(PKPaymentWebServiceRequest *)self _signRequest:v19 webService:serviceCopy completion:v25];
}

@end