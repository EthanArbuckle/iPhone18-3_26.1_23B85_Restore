@interface GCConfigurationAssetManagementServiceConnection
- (id)currentAsset:(BOOL)asset;
@end

@implementation GCConfigurationAssetManagementServiceConnection

void __57__GCConfigurationAssetManagementServiceConnection_assets__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__GCConfigurationAssetManagementServiceConnection_assets__block_invoke_2;
  v6[3] = &unk_1E8414BB8;
  v7 = v4;
  v5 = v4;
  [a2 assetsWithReply:v6];
}

- (id)currentAsset:(BOOL)asset
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__GCConfigurationAssetManagementServiceConnection_currentAsset___block_invoke;
  v5[3] = &__block_descriptor_33_e81_v24__0___GCConfigurationAssetManagementServiceXPCInterface__8___v_____NSError__16l;
  assetCopy = asset;
  v3 = [(GCConfigXPCServiceServiceConnection *)self serviceVendorRequestWithLabel:@"Current Asset" handler:v5];

  return v3;
}

void __64__GCConfigurationAssetManagementServiceConnection_currentAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__GCConfigurationAssetManagementServiceConnection_currentAsset___block_invoke_2;
  v8[3] = &unk_1E8414BE0;
  v9 = v5;
  v7 = v5;
  [a2 currentAsset:v6 withReply:v8];
}

void __65__GCConfigurationAssetManagementServiceConnection_lastUpdateDate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__GCConfigurationAssetManagementServiceConnection_lastUpdateDate__block_invoke_2;
  v6[3] = &unk_1E8414C28;
  v7 = v4;
  v5 = v4;
  [a2 lastUpdateDateWithReply:v6];
}

@end