@interface CDMAssetFactorToFolders
- (CDMAssetFactorToFolders)initWithAssetFactorToFoldersMapping:(id)mapping;
@end

@implementation CDMAssetFactorToFolders

- (CDMAssetFactorToFolders)initWithAssetFactorToFoldersMapping:(id)mapping
{
  mappingCopy = mapping;
  v9.receiver = self;
  v9.super_class = CDMAssetFactorToFolders;
  v6 = [(CDMAssetFactorToFolders *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetFactorToFoldersMapping, mapping);
  }

  return v7;
}

@end