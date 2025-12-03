@interface CIDCBuilderSignatureDetails
- (CIDCBuilderSignatureDetails)initWithSigningAlgorithm:(int64_t)algorithm issuerCertificate:(id)certificate issuerKey:(id)key signature:(id)signature;
@end

@implementation CIDCBuilderSignatureDetails

- (CIDCBuilderSignatureDetails)initWithSigningAlgorithm:(int64_t)algorithm issuerCertificate:(id)certificate issuerKey:(id)key signature:(id)signature
{
  certificateCopy = certificate;
  keyCopy = key;
  signatureCopy = signature;
  v16.receiver = self;
  v16.super_class = CIDCBuilderSignatureDetails;
  v13 = [(CIDCBuilderSignatureDetails *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(CIDCBuilderSignatureDetails *)v13 setSigningAlgorithm:algorithm];
    [(CIDCBuilderSignatureDetails *)v14 setIssuerCertificate:certificateCopy];
    [(CIDCBuilderSignatureDetails *)v14 setIssuerKey:keyCopy];
    [(CIDCBuilderSignatureDetails *)v14 setSignature:signatureCopy];
  }

  return v14;
}

@end