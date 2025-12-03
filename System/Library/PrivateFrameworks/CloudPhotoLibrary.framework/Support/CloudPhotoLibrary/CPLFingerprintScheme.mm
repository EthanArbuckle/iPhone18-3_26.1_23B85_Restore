@interface CPLFingerprintScheme
+ (void)configureAssetTransferOptionsForCKAsset:(id)asset fromReference:(id)reference scopeProvider:(id)provider;
- (void)configureAssetTransferOptionsForCKAsset:(id)asset scopeProvider:(id)provider;
@end

@implementation CPLFingerprintScheme

- (void)configureAssetTransferOptionsForCKAsset:(id)asset scopeProvider:(id)provider
{
  assetCopy = asset;
  v7 = objc_alloc_init(CKAssetTransferOptions);
  v6 = [NSNumber numberWithBool:[(CPLFingerprintScheme *)self isMMCSv2]];
  [v7 setUseMMCSEncryptionV2:v6];

  [assetCopy setAssetTransferOptions:v7];
}

+ (void)configureAssetTransferOptionsForCKAsset:(id)asset fromReference:(id)reference scopeProvider:(id)provider
{
  providerCopy = provider;
  referenceCopy = reference;
  assetCopy = asset;
  fingerprintContext = [providerCopy fingerprintContext];
  fileSignature = [referenceCopy fileSignature];

  v12 = [fingerprintContext fingerprintSchemeForSignature:fileSignature];

  [v12 configureAssetTransferOptionsForCKAsset:assetCopy scopeProvider:providerCopy];
}

@end