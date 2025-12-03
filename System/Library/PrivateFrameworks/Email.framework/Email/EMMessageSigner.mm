@interface EMMessageSigner
- (BOOL)hasSeparateSigningAndEncryptionCertificates;
- (EMMessageSigner)initWithCoder:(id)coder;
- (EMMessageSigner)initWithSigningTrust:(id)trust encryptionTrust:(id)encryptionTrust;
- (void)encodeWithCoder:(id)coder;
- (void)evaluateTrustsWithOptions:(unint64_t)options;
- (void)reevaluateTrustWithNetworkAccessAllowed;
@end

@implementation EMMessageSigner

- (EMMessageSigner)initWithSigningTrust:(id)trust encryptionTrust:(id)encryptionTrust
{
  trustCopy = trust;
  encryptionTrustCopy = encryptionTrust;
  v12.receiver = self;
  v12.super_class = EMMessageSigner;
  v9 = [(EMMessageSigner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signingCertificateTrustInfo, trust);
    objc_storeStrong(&v10->_encryptionCertificateTrustInfo, encryptionTrust);
  }

  return v10;
}

- (EMMessageSigner)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_signingCertificateTrustInfo"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_encryptionCertificateTrustInfo"];
  v7 = [(EMMessageSigner *)self initWithSigningTrust:v5 encryptionTrust:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  signingCertificateTrustInfo = [(EMMessageSigner *)self signingCertificateTrustInfo];
  [coderCopy encodeObject:signingCertificateTrustInfo forKey:@"EFPropertyKey_signingCertificateTrustInfo"];

  encryptionCertificateTrustInfo = [(EMMessageSigner *)self encryptionCertificateTrustInfo];
  [coderCopy encodeObject:encryptionCertificateTrustInfo forKey:@"EFPropertyKey_encryptionCertificateTrustInfo"];
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

- (void)evaluateTrustsWithOptions:(unint64_t)options
{
  signingCertificateTrustInfo = [(EMMessageSigner *)self signingCertificateTrustInfo];
  [signingCertificateTrustInfo evaluateTrustWithOptions:options];

  encryptionCertificateTrustInfo = [(EMMessageSigner *)self encryptionCertificateTrustInfo];
  [encryptionCertificateTrustInfo evaluateTrustWithOptions:options];
}

- (void)reevaluateTrustWithNetworkAccessAllowed
{
  signingCertificateTrustInfo = [(EMMessageSigner *)self signingCertificateTrustInfo];
  [signingCertificateTrustInfo reevaluateTrustWithNetworkAccessAllowed];

  encryptionCertificateTrustInfo = [(EMMessageSigner *)self encryptionCertificateTrustInfo];
  [encryptionCertificateTrustInfo reevaluateTrustWithNetworkAccessAllowed];
}

@end