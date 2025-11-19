@interface PKPaymentRevokeSharedCredentialRequest
- (PKPaymentRevokeSharedCredentialRequest)initWithCredential:(id)a3 revocationAttestation:(id)a4;
- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5;
- (id)requestBody;
@end

@implementation PKPaymentRevokeSharedCredentialRequest

- (PKPaymentRevokeSharedCredentialRequest)initWithCredential:(id)a3 revocationAttestation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PKPaymentRevokeSharedCredentialRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v18 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v9->_credential, a3);
  v11 = dictionaryFromSubcredentialEncryptedRequest(v8);
  revocationAttestation = v10->_revocationAttestation;
  v10->_revocationAttestation = v11;

  if (!v10->_credential)
  {
    v14 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 0;
      v15 = "Missing credential on deletion request";
LABEL_9:
      _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, v15, v17, 2u);
    }

LABEL_10:

    v13 = 0;
    goto LABEL_11;
  }

  if (!v10->_revocationAttestation)
  {
    v14 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 0;
      v15 = "Missing attestation on revocation request";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_4:
  v13 = v10;
LABEL_11:

  return v13;
}

- (id)requestBody
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(PKAppletSubcredential *)self->_credential identifier];
  [v3 setObject:v4 forKeyedSubscript:@"keyID"];

  v5 = [(PKAppletSubcredential *)self->_credential partnerIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"partnerID"];

  v6 = [(PKAppletSubcredential *)self->_credential brandIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"brand"];

  revocationAttestation = self->_revocationAttestation;
  if (revocationAttestation)
  {
    [v3 setObject:revocationAttestation forKeyedSubscript:@"remoteTerminationRequest"];
  }

  return v3;
}

- (id)_urlRequestWithServiceURL:(id)a3 deviceIdentifier:(id)a4 appleAccountInformation:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = @"devices";
  v20 = a4;
  v21 = @"deleteKey";
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v19 count:3];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:v11 endpointComponents:v12 queryParameters:0 appleAccountInformation:v9, v19, v20, v21, v22];

  [v13 setHTTPMethod:@"POST"];
  v14 = objc_opt_class();
  v15 = [(PKPaymentRevokeSharedCredentialRequest *)self requestBody];
  v16 = [v14 _HTTPBodyWithDictionary:v15];
  [v13 setHTTPBody:v16];

  v17 = [v13 copy];

  return v17;
}

@end