@interface IDSAuthenticationCertificateSignature
- (IDSAuthenticationCertificateSignature)initWithSubscriptionIdentifier:(id)a3 authenticationCertificate:(id)a4 signature:(id)a5 nonce:(id)a6;
- (IDSAuthenticationCertificateSignature)initWithSubscriptionIdentifier:(id)a3 authenticationCertificate:(id)a4 signature:(id)a5 serverVerifiableEncoding:(id)a6;
- (id)description;
@end

@implementation IDSAuthenticationCertificateSignature

- (IDSAuthenticationCertificateSignature)initWithSubscriptionIdentifier:(id)a3 authenticationCertificate:(id)a4 signature:(id)a5 nonce:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a6 base64EncodedStringWithOptions:0];
  v14 = [v10 base64EncodedStringWithOptions:0];
  v15 = [v11 dataRepresentation];
  v16 = [v15 base64EncodedStringWithOptions:0];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld:%@:%@:%@", 0, v16, v13, v14];
  v18 = [(IDSAuthenticationCertificateSignature *)self initWithSubscriptionIdentifier:v12 authenticationCertificate:v11 signature:v10 serverVerifiableEncoding:v17];

  return v18;
}

- (IDSAuthenticationCertificateSignature)initWithSubscriptionIdentifier:(id)a3 authenticationCertificate:(id)a4 signature:(id)a5 serverVerifiableEncoding:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSAuthenticationCertificateSignature;
  v15 = [(IDSAuthenticationCertificateSignature *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_subscriptionIdentifier, a3);
    objc_storeStrong(&v16->_authenticationCertificate, a4);
    objc_storeStrong(&v16->_signature, a5);
    objc_storeStrong(&v16->_serverVerifiableEncoding, a6);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSAuthenticationCertificateSignature *)self subscriptionIdentifier];
  v6 = MEMORY[0x1E696AD98];
  v7 = [(IDSAuthenticationCertificateSignature *)self serverVerifiableEncoding];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "hash")}];
  v9 = [v3 stringWithFormat:@"<%@: %p subscriptionIdentifier: %@, serverVerifiableEncodingHash: %@>", v4, self, v5, v8];

  return v9;
}

@end