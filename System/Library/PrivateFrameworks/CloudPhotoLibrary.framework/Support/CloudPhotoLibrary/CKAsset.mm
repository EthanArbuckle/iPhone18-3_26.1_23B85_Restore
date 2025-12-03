@interface CKAsset
+ (id)cplFingerPrintForSignature:(id)signature;
- (id)cplCopyCleanAsset;
- (id)cplFingerPrint;
@end

@implementation CKAsset

+ (id)cplFingerPrintForSignature:(id)signature
{
  if (signature)
  {
    v4 = [signature base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)cplFingerPrint
{
  signature = [(CKAsset *)self signature];
  v3 = [CKAsset cplFingerPrintForSignature:signature];

  return v3;
}

- (id)cplCopyCleanAsset
{
  assetReference = [(CKAsset *)self assetReference];

  if (assetReference)
  {
    v5 = [CKAsset alloc];
    assetReference2 = [(CKAsset *)self assetReference];
    signature2 = [assetReference2 copy];
    v8 = [v5 initWithAssetReference:signature2];
    goto LABEL_3;
  }

  fileURL = [(CKAsset *)self fileURL];

  if (fileURL)
  {
    signature = [(CKAsset *)self signature];

    v16 = [CKAsset alloc];
    assetReference2 = [(CKAsset *)self fileURL];
    if (!signature)
    {
      v9 = [v16 initWithFileURL:assetReference2];
      goto LABEL_4;
    }

    signature2 = [(CKAsset *)self signature];
    v8 = [v16 initWithFileURL:assetReference2 signature:signature2];
LABEL_3:
    v9 = v8;

LABEL_4:
    itemTypeHint = [(CKAsset *)self itemTypeHint];
    [v9 setItemTypeHint:itemTypeHint];
    goto LABEL_5;
  }

  assetContent = [(CKAsset *)self assetContent];

  if (!assetContent)
  {
    sub_1001A397C(a2, self);
  }

  v18 = [CKAsset alloc];
  itemTypeHint = [(CKAsset *)self assetContent];
  itemTypeHint2 = [(CKAsset *)self itemTypeHint];
  v9 = [v18 initWithAssetContent:itemTypeHint itemTypeHint:itemTypeHint2];

LABEL_5:
  assetTransferOptions = [(CKAsset *)self assetTransferOptions];
  [v9 setAssetTransferOptions:assetTransferOptions];

  boundaryKey = [(CKAsset *)self boundaryKey];
  [v9 setBoundaryKey:boundaryKey];

  return v9;
}

@end