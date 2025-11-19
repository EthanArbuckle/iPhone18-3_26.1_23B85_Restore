@interface CDMAssetFactorToFolders
- (CDMAssetFactorToFolders)initWithAssetFactorToFoldersMapping:(id)a3;
@end

@implementation CDMAssetFactorToFolders

- (CDMAssetFactorToFolders)initWithAssetFactorToFoldersMapping:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CDMAssetFactorToFolders;
  v6 = [(CDMAssetFactorToFolders *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetFactorToFoldersMapping, a3);
  }

  return v7;
}

@end