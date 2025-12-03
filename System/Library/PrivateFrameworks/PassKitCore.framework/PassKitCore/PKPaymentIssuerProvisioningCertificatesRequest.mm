@interface PKPaymentIssuerProvisioningCertificatesRequest
- (PKPaymentIssuerProvisioningCertificatesRequest)initWithEncryptionScheme:(id)scheme;
- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information;
@end

@implementation PKPaymentIssuerProvisioningCertificatesRequest

- (PKPaymentIssuerProvisioningCertificatesRequest)initWithEncryptionScheme:(id)scheme
{
  schemeCopy = scheme;
  if ([schemeCopy length])
  {
    v9.receiver = self;
    v9.super_class = PKPaymentIssuerProvisioningCertificatesRequest;
    v5 = [(PKOverlayableWebServiceRequest *)&v9 init];
    if (v5)
    {
      v6 = [schemeCopy copy];
      encryptionScheme = v5->_encryptionScheme;
      v5->_encryptionScheme = v6;
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (id)_urlRequestWithServiceURL:(id)l deviceIdentifier:(id)identifier appleAccountInformation:(id)information
{
  v20[3] = *MEMORY[0x1E69E9840];
  v20[0] = @"devices";
  v20[1] = identifier;
  v20[2] = @"issuerProvisioningCertificates";
  v8 = MEMORY[0x1E695DEC8];
  informationCopy = information;
  identifierCopy = identifier;
  lCopy = l;
  v12 = [v8 arrayWithObjects:v20 count:3];
  encryptionScheme = self->_encryptionScheme;
  v18 = @"encryptionVersion";
  v19 = encryptionScheme;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

  v15 = [(PKPaymentWebServiceRequest *)self _murlRequestWithServiceURL:lCopy endpointComponents:v12 queryParameters:v14 appleAccountInformation:informationCopy];

  [v15 setHTTPMethod:@"GET"];
  [v15 setCachePolicy:1];
  v16 = [v15 copy];

  return v16;
}

@end