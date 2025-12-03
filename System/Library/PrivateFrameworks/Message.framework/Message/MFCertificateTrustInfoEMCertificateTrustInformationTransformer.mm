@interface MFCertificateTrustInfoEMCertificateTrustInformationTransformer
+ (id)certificateTrustInformationFromMFCertificateTrustInfo:(id)info;
@end

@implementation MFCertificateTrustInfoEMCertificateTrustInformationTransformer

+ (id)certificateTrustInformationFromMFCertificateTrustInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFCertificateTrustInfoEMCertificateTrustInformationTransformer.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"certificateTrustInfo"}];
  }

  v6 = objc_alloc(MEMORY[0x1E699AC50]);
  trust = [infoCopy trust];
  certificateType = [infoCopy certificateType];
  sender = [infoCopy sender];
  v10 = [v6 initWithTrust:trust certificateType:certificateType sender:sender];

  return v10;
}

@end