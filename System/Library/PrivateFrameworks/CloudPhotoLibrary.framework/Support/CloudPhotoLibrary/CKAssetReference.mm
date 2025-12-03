@interface CKAssetReference
- (id)cplFingerPrint;
@end

@implementation CKAssetReference

- (id)cplFingerPrint
{
  fileSignature = [(CKAssetReference *)self fileSignature];
  v3 = [CKAsset cplFingerPrintForSignature:fileSignature];

  return v3;
}

@end