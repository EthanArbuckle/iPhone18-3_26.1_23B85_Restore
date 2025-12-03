@interface IDSAuthenticationCertificateSignature
- (IDSAuthenticationCertificateSignature)initWithSubscriptionIdentifier:(id)identifier authenticationCertificate:(id)certificate signature:(id)signature nonce:(id)nonce;
- (IDSAuthenticationCertificateSignature)initWithSubscriptionIdentifier:(id)identifier authenticationCertificate:(id)certificate signature:(id)signature serverVerifiableEncoding:(id)encoding;
- (id)description;
@end

@implementation IDSAuthenticationCertificateSignature

- (IDSAuthenticationCertificateSignature)initWithSubscriptionIdentifier:(id)identifier authenticationCertificate:(id)certificate signature:(id)signature nonce:(id)nonce
{
  signatureCopy = signature;
  certificateCopy = certificate;
  identifierCopy = identifier;
  v13 = [nonce base64EncodedStringWithOptions:0];
  v14 = [signatureCopy base64EncodedStringWithOptions:0];
  dataRepresentation = [certificateCopy dataRepresentation];
  v16 = [dataRepresentation base64EncodedStringWithOptions:0];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%@:%@:%@", 0, v16, v13, v14];
  v18 = [(IDSAuthenticationCertificateSignature *)self initWithSubscriptionIdentifier:identifierCopy authenticationCertificate:certificateCopy signature:signatureCopy serverVerifiableEncoding:v17];

  return v18;
}

- (IDSAuthenticationCertificateSignature)initWithSubscriptionIdentifier:(id)identifier authenticationCertificate:(id)certificate signature:(id)signature serverVerifiableEncoding:(id)encoding
{
  identifierCopy = identifier;
  certificateCopy = certificate;
  signatureCopy = signature;
  encodingCopy = encoding;
  v18.receiver = self;
  v18.super_class = IDSAuthenticationCertificateSignature;
  v15 = [(IDSAuthenticationCertificateSignature *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_subscriptionIdentifier, identifier);
    objc_storeStrong(&v16->_authenticationCertificate, certificate);
    objc_storeStrong(&v16->_signature, signature);
    objc_storeStrong(&v16->_serverVerifiableEncoding, encoding);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  subscriptionIdentifier = [(IDSAuthenticationCertificateSignature *)self subscriptionIdentifier];
  v6 = MEMORY[0x1E696AD98];
  serverVerifiableEncoding = [(IDSAuthenticationCertificateSignature *)self serverVerifiableEncoding];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(serverVerifiableEncoding, "hash")}];
  v9 = [v3 stringWithFormat:@"<%@: %p subscriptionIdentifier: %@, serverVerifiableEncodingHash: %@>", v4, self, subscriptionIdentifier, v8];

  return v9;
}

@end