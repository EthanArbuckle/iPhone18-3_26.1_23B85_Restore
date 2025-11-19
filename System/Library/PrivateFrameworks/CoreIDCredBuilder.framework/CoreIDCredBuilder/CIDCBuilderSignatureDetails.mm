@interface CIDCBuilderSignatureDetails
- (CIDCBuilderSignatureDetails)initWithSigningAlgorithm:(int64_t)a3 issuerCertificate:(id)a4 issuerKey:(id)a5 signature:(id)a6;
@end

@implementation CIDCBuilderSignatureDetails

- (CIDCBuilderSignatureDetails)initWithSigningAlgorithm:(int64_t)a3 issuerCertificate:(id)a4 issuerKey:(id)a5 signature:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = CIDCBuilderSignatureDetails;
  v13 = [(CIDCBuilderSignatureDetails *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(CIDCBuilderSignatureDetails *)v13 setSigningAlgorithm:a3];
    [(CIDCBuilderSignatureDetails *)v14 setIssuerCertificate:v10];
    [(CIDCBuilderSignatureDetails *)v14 setIssuerKey:v11];
    [(CIDCBuilderSignatureDetails *)v14 setSignature:v12];
  }

  return v14;
}

@end