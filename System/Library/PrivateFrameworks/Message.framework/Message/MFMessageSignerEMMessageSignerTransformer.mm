@interface MFMessageSignerEMMessageSignerTransformer
+ (id)messageSignerFromMFMessageSigner:(id)signer;
@end

@implementation MFMessageSignerEMMessageSignerTransformer

+ (id)messageSignerFromMFMessageSigner:(id)signer
{
  signerCopy = signer;
  signingCertificateTrustInfo = [signerCopy signingCertificateTrustInfo];
  v5 = [MFCertificateTrustInfoEMCertificateTrustInformationTransformer certificateTrustInformationFromMFCertificateTrustInfo:signingCertificateTrustInfo];

  encryptionCertificateTrustInfo = [signerCopy encryptionCertificateTrustInfo];
  if (encryptionCertificateTrustInfo)
  {
    v7 = [MFCertificateTrustInfoEMCertificateTrustInformationTransformer certificateTrustInformationFromMFCertificateTrustInfo:encryptionCertificateTrustInfo];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E699ADD0]) initWithSigningTrust:v5 encryptionTrust:v7];

  return v8;
}

@end