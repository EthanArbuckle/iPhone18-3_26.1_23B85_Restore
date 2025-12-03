@interface PKPaymentRevokeSharedCredentialRequest
- (PKPaymentRevokeSharedCredentialRequest)initWithCredential:(id)credential revocationAttestation:(id)attestation;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
- (id)requestBody;
@end

@implementation PKPaymentRevokeSharedCredentialRequest

- (PKPaymentRevokeSharedCredentialRequest)initWithCredential:(id)credential revocationAttestation:(id)attestation
{
  credentialCopy = credential;
  attestationCopy = attestation;
  v18.receiver = self;
  v18.super_class = PKPaymentRevokeSharedCredentialRequest;
  v9 = [(PKOverlayableWebServiceRequest *)&v18 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v9->_credential, credential);
  v11 = dictionaryFromSubcredentialEncryptedRequest(attestationCopy);
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
  identifier = [(PKAppletSubcredential *)self->_credential identifier];
  [v3 setObject:identifier forKeyedSubscript:@"keyID"];

  partnerIdentifier = [(PKAppletSubcredential *)self->_credential partnerIdentifier];
  [v3 setObject:partnerIdentifier forKeyedSubscript:@"partnerID"];

  brandIdentifier = [(PKAppletSubcredential *)self->_credential brandIdentifier];
  [v3 setObject:brandIdentifier forKeyedSubscript:@"brand"];

  revocationAttestation = self->_revocationAttestation;
  if (revocationAttestation)
  {
    [v3 setObject:revocationAttestation forKeyedSubscript:@"remoteTerminationRequest"];
  }

  return v3;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = @"devices";
  identifierCopy = identifier;
  v21 = @"deleteKey";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy2 = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:&v19 count:3];

  v13 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:0 appleAccountInformation:informationCopy, v19, identifierCopy, v21, v22];

  [v13 setHTTPMethod:@"POST"];
  v14 = objc_opt_class();
  requestBody = [(PKPaymentRevokeSharedCredentialRequest *)self requestBody];
  v16 = [v14 _HTTPBodyWithDictionary:requestBody];
  [v13 setHTTPBody:v16];

  v17 = [v13 copy];

  return v17;
}

@end