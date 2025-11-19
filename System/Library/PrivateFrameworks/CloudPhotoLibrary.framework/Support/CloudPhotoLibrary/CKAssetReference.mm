@interface CKAssetReference
- (id)cplFingerPrint;
@end

@implementation CKAssetReference

- (id)cplFingerPrint
{
  v2 = [(CKAssetReference *)self fileSignature];
  v3 = [CKAsset cplFingerPrintForSignature:v2];

  return v3;
}

@end