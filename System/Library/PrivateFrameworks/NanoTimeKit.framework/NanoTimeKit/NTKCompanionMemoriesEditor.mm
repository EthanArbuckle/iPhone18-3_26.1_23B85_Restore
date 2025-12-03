@interface NTKCompanionMemoriesEditor
- (id)_fetchSingleAsset;
@end

@implementation NTKCompanionMemoriesEditor

- (id)_fetchSingleAsset
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D2BA48]);
  device = [(NTKCompanionResourceDirectoryEditor *)self device];
  nrDevice = [device nrDevice];
  v6 = [v3 initWithCollectionTarget:3 device:nrDevice];

  assetCollections = [v6 assetCollections];
  anyObject = [assetCollections anyObject];

  if (anyObject)
  {
    optionsForSingleAsset = [(NTKCompanionSinglePHAssetEditor *)self optionsForSingleAsset];
    v10 = [v6 fetchKeyAssetsInAssetCollection:anyObject options:optionsForSingleAsset];
    firstObject = [v10 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v12 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    localizedTitle = [anyObject localizedTitle];
    v15 = 138412546;
    v16 = localizedTitle;
    v17 = 2112;
    v18 = firstObject;
    _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "NTKCompanionMemoriesEditor: assetCollection %@, asset == %@", &v15, 0x16u);
  }

  return firstObject;
}

@end