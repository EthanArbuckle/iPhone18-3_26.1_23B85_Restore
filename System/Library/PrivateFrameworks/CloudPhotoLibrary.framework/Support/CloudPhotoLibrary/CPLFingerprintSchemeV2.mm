@interface CPLFingerprintSchemeV2
- (void)configureAssetTransferOptionsForCKAsset:(id)a3 scopeProvider:(id)a4;
@end

@implementation CPLFingerprintSchemeV2

- (void)configureAssetTransferOptionsForCKAsset:(id)a3 scopeProvider:(id)a4
{
  v7 = a3;
  v5 = objc_alloc_init(CKAssetTransferOptions);
  [v5 setUseMMCSEncryptionV2:&__kCFBooleanTrue];
  if (qword_1002C5358 != -1)
  {
    sub_1001A3C4C();
  }

  if ((byte_1002C5360 & 1) != 0 || ([v7 isReference] & 1) == 0)
  {
    v6 = [(CPLFingerprintSchemeV2 *)self boundaryKey];
    [v7 setBoundaryKey:v6];
  }

  [v7 setAssetTransferOptions:v5];
}

@end