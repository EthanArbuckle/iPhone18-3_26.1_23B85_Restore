@interface CPLFingerprintScheme
+ (void)configureAssetTransferOptionsForCKAsset:(id)a3 fromReference:(id)a4 scopeProvider:(id)a5;
- (void)configureAssetTransferOptionsForCKAsset:(id)a3 scopeProvider:(id)a4;
@end

@implementation CPLFingerprintScheme

- (void)configureAssetTransferOptionsForCKAsset:(id)a3 scopeProvider:(id)a4
{
  v5 = a3;
  v7 = objc_alloc_init(CKAssetTransferOptions);
  v6 = [NSNumber numberWithBool:[(CPLFingerprintScheme *)self isMMCSv2]];
  [v7 setUseMMCSEncryptionV2:v6];

  [v5 setAssetTransferOptions:v7];
}

+ (void)configureAssetTransferOptionsForCKAsset:(id)a3 fromReference:(id)a4 scopeProvider:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v7 fingerprintContext];
  v11 = [v8 fileSignature];

  v12 = [v10 fingerprintSchemeForSignature:v11];

  [v12 configureAssetTransferOptionsForCKAsset:v9 scopeProvider:v7];
}

@end