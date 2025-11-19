@interface CKDAssetCacheTableGroup
- (void)createTables;
@end

@implementation CKDAssetCacheTableGroup

- (void)createTables
{
  v13.receiver = self;
  v13.super_class = CKDAssetCacheTableGroup;
  [(CKSQLiteContainerAttributedTableGroup *)&v13 createTables];
  v3 = [CKDAssetHandleTable alloc];
  v5 = objc_msgSend_initWithLogicalTableName_(v3, v4, @"AssetHandle");
  assetHandleTable = self->_assetHandleTable;
  self->_assetHandleTable = v5;

  objc_msgSend_addTable_(self, v7, self->_assetHandleTable);
  v8 = [CKDAssetVolumeTable alloc];
  v10 = objc_msgSend_initWithLogicalTableName_(v8, v9, @"AssetVolume");
  assetVolumeTable = self->_assetVolumeTable;
  self->_assetVolumeTable = v10;

  objc_msgSend_addTable_(self, v12, self->_assetVolumeTable);
}

@end