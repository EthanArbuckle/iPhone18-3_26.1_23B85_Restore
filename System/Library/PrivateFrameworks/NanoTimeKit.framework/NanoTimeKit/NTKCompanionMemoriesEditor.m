@interface NTKCompanionMemoriesEditor
- (id)_fetchSingleAsset;
@end

@implementation NTKCompanionMemoriesEditor

- (id)_fetchSingleAsset
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D2BA48]);
  v4 = [(NTKCompanionResourceDirectoryEditor *)self device];
  v5 = [v4 nrDevice];
  v6 = [v3 initWithCollectionTarget:3 device:v5];

  v7 = [v6 assetCollections];
  v8 = [v7 anyObject];

  if (v8)
  {
    v9 = [(NTKCompanionSinglePHAssetEditor *)self optionsForSingleAsset];
    v10 = [v6 fetchKeyAssetsInAssetCollection:v8 options:v9];
    v11 = [v10 firstObject];
  }

  else
  {
    v11 = 0;
  }

  v12 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v8 localizedTitle];
    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "NTKCompanionMemoriesEditor: assetCollection %@, asset == %@", &v15, 0x16u);
  }

  return v11;
}

@end