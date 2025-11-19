@interface CKAsset
+ (id)cplFingerPrintForSignature:(id)a3;
- (id)cplCopyCleanAsset;
- (id)cplFingerPrint;
@end

@implementation CKAsset

+ (id)cplFingerPrintForSignature:(id)a3
{
  if (a3)
  {
    v4 = [a3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)cplFingerPrint
{
  v2 = [(CKAsset *)self signature];
  v3 = [CKAsset cplFingerPrintForSignature:v2];

  return v3;
}

- (id)cplCopyCleanAsset
{
  v4 = [(CKAsset *)self assetReference];

  if (v4)
  {
    v5 = [CKAsset alloc];
    v6 = [(CKAsset *)self assetReference];
    v7 = [v6 copy];
    v8 = [v5 initWithAssetReference:v7];
    goto LABEL_3;
  }

  v14 = [(CKAsset *)self fileURL];

  if (v14)
  {
    v15 = [(CKAsset *)self signature];

    v16 = [CKAsset alloc];
    v6 = [(CKAsset *)self fileURL];
    if (!v15)
    {
      v9 = [v16 initWithFileURL:v6];
      goto LABEL_4;
    }

    v7 = [(CKAsset *)self signature];
    v8 = [v16 initWithFileURL:v6 signature:v7];
LABEL_3:
    v9 = v8;

LABEL_4:
    v10 = [(CKAsset *)self itemTypeHint];
    [v9 setItemTypeHint:v10];
    goto LABEL_5;
  }

  v17 = [(CKAsset *)self assetContent];

  if (!v17)
  {
    sub_1001A397C(a2, self);
  }

  v18 = [CKAsset alloc];
  v10 = [(CKAsset *)self assetContent];
  v19 = [(CKAsset *)self itemTypeHint];
  v9 = [v18 initWithAssetContent:v10 itemTypeHint:v19];

LABEL_5:
  v11 = [(CKAsset *)self assetTransferOptions];
  [v9 setAssetTransferOptions:v11];

  v12 = [(CKAsset *)self boundaryKey];
  [v9 setBoundaryKey:v12];

  return v9;
}

@end