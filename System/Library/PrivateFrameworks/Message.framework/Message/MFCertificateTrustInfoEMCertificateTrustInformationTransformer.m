@interface MFCertificateTrustInfoEMCertificateTrustInformationTransformer
+ (id)certificateTrustInformationFromMFCertificateTrustInfo:(id)a3;
@end

@implementation MFCertificateTrustInfoEMCertificateTrustInformationTransformer

+ (id)certificateTrustInformationFromMFCertificateTrustInfo:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"MFCertificateTrustInfoEMCertificateTrustInformationTransformer.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"certificateTrustInfo"}];
  }

  v6 = objc_alloc(MEMORY[0x1E699AC50]);
  v7 = [v5 trust];
  v8 = [v5 certificateType];
  v9 = [v5 sender];
  v10 = [v6 initWithTrust:v7 certificateType:v8 sender:v9];

  return v10;
}

@end