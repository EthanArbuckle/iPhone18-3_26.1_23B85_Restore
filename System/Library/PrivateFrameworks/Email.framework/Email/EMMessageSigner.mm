@interface EMMessageSigner
- (BOOL)hasSeparateSigningAndEncryptionCertificates;
- (EMMessageSigner)initWithCoder:(id)a3;
- (EMMessageSigner)initWithSigningTrust:(id)a3 encryptionTrust:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)evaluateTrustsWithOptions:(unint64_t)a3;
- (void)reevaluateTrustWithNetworkAccessAllowed;
@end

@implementation EMMessageSigner

- (EMMessageSigner)initWithSigningTrust:(id)a3 encryptionTrust:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EMMessageSigner;
  v9 = [(EMMessageSigner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signingCertificateTrustInfo, a3);
    objc_storeStrong(&v10->_encryptionCertificateTrustInfo, a4);
  }

  return v10;
}

- (EMMessageSigner)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_signingCertificateTrustInfo"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_encryptionCertificateTrustInfo"];
  v7 = [(EMMessageSigner *)self initWithSigningTrust:v5 encryptionTrust:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EMMessageSigner *)self signingCertificateTrustInfo];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_signingCertificateTrustInfo"];

  v5 = [(EMMessageSigner *)self encryptionCertificateTrustInfo];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_encryptionCertificateTrustInfo"];
}

- (BOOL)hasSeparateSigningAndEncryptionCertificates
{
  signingCertificateTrustInfo = self->_signingCertificateTrustInfo;
  if (signingCertificateTrustInfo)
  {
    if (self->_encryptionCertificateTrustInfo)
    {
      LOBYTE(signingCertificateTrustInfo) = ![(EMCertificateTrustInformation *)signingCertificateTrustInfo isEqual:?];
    }

    else
    {
      LOBYTE(signingCertificateTrustInfo) = 0;
    }
  }

  return signingCertificateTrustInfo;
}

- (void)evaluateTrustsWithOptions:(unint64_t)a3
{
  v5 = [(EMMessageSigner *)self signingCertificateTrustInfo];
  [v5 evaluateTrustWithOptions:a3];

  v6 = [(EMMessageSigner *)self encryptionCertificateTrustInfo];
  [v6 evaluateTrustWithOptions:a3];
}

- (void)reevaluateTrustWithNetworkAccessAllowed
{
  v3 = [(EMMessageSigner *)self signingCertificateTrustInfo];
  [v3 reevaluateTrustWithNetworkAccessAllowed];

  v4 = [(EMMessageSigner *)self encryptionCertificateTrustInfo];
  [v4 reevaluateTrustWithNetworkAccessAllowed];
}

@end