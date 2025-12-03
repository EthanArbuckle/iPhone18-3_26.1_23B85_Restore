@interface CKDModifyRecordsOperationReReferenceBatchKey
- (BOOL)isEqual:(id)equal;
- (CKDModifyRecordsOperationReReferenceBatchKey)initWithAsset:(id)asset;
- (CKDModifyRecordsOperationReReferenceBatchKey)initWithPackageReference:(id)reference destinationRecordZoneID:(id)d;
- (unint64_t)hash;
@end

@implementation CKDModifyRecordsOperationReReferenceBatchKey

- (CKDModifyRecordsOperationReReferenceBatchKey)initWithAsset:(id)asset
{
  assetCopy = asset;
  v29.receiver = self;
  v29.super_class = CKDModifyRecordsOperationReReferenceBatchKey;
  v7 = [(CKDModifyRecordsOperationReReferenceBatchKey *)&v29 init];
  if (v7)
  {
    v8 = objc_msgSend_assetReference(assetCopy, v5, v6);
    v11 = objc_msgSend_recordID(v8, v9, v10);
    v14 = objc_msgSend_zoneID(v11, v12, v13);
    v17 = objc_msgSend_recordID(assetCopy, v15, v16);
    v20 = objc_msgSend_zoneID(v17, v18, v19);
    v7->_isClone = objc_msgSend_hasSameOwnerAs_(v20, v21, v14) ^ 1;

    v7->_databaseScope = objc_msgSend_databaseScope(v8, v22, v23);
    v26 = objc_msgSend_ownerName(v14, v24, v25);
    owner = v7->_owner;
    v7->_owner = v26;
  }

  return v7;
}

- (CKDModifyRecordsOperationReReferenceBatchKey)initWithPackageReference:(id)reference destinationRecordZoneID:(id)d
{
  referenceCopy = reference;
  dCopy = d;
  v26.receiver = self;
  v26.super_class = CKDModifyRecordsOperationReReferenceBatchKey;
  v10 = [(CKDModifyRecordsOperationReReferenceBatchKey *)&v26 init];
  if (v10)
  {
    v11 = objc_msgSend_packageReference(referenceCopy, v8, v9);
    v14 = objc_msgSend_recordID(v11, v12, v13);
    v17 = objc_msgSend_zoneID(v14, v15, v16);
    v10->_isClone = objc_msgSend_hasSameOwnerAs_(dCopy, v18, v17) ^ 1;
    v10->_databaseScope = objc_msgSend_databaseScope(v11, v19, v20);
    v23 = objc_msgSend_ownerName(v17, v21, v22);
    owner = v10->_owner;
    v10->_owner = v23;

    v10->_isPackageSection = 1;
  }

  return v10;
}

- (unint64_t)hash
{
  if (self->_isClone)
  {
    return objc_msgSend_hash(self->_owner, a2, v2);
  }

  else
  {
    return self->_databaseScope;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (!self->_isPackageSection && self->_databaseScope == equalCopy[3] && self->_isClone == *(equalCopy + 16))
  {
    isEqualToString = objc_msgSend_isEqualToString_(self->_owner, v5, equalCopy[1]);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

@end