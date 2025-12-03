@interface CPLFingerprintSchemeV2
- (void)configureAssetTransferOptionsForCKAsset:(id)asset scopeProvider:(id)provider;
@end

@implementation CPLFingerprintSchemeV2

- (void)configureAssetTransferOptionsForCKAsset:(id)asset scopeProvider:(id)provider
{
  assetCopy = asset;
  v5 = objc_alloc_init(CKAssetTransferOptions);
  [v5 setUseMMCSEncryptionV2:&__kCFBooleanTrue];
  if (qword_1002C5358 != -1)
  {
    sub_1001A3C4C();
  }

  if ((byte_1002C5360 & 1) != 0 || ([assetCopy isReference] & 1) == 0)
  {
    boundaryKey = [(CPLFingerprintSchemeV2 *)self boundaryKey];
    [assetCopy setBoundaryKey:boundaryKey];
  }

  [assetCopy setAssetTransferOptions:v5];
}

@end