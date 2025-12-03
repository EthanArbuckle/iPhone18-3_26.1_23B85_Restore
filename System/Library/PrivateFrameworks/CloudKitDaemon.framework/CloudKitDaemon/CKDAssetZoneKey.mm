@interface CKDAssetZoneKey
- (BOOL)isCrossOwner;
- (BOOL)isEqual:(id)equal;
- (CKDAssetZoneKey)initWithDestinationZoneID:(id)d destinationDatabaseScope:(int64_t)scope usesMMCSEncryptionV2:(id)v2 sourceZoneID:(id)iD sourceDatabaseScope:(int64_t)databaseScope isPackageRereference:(BOOL)rereference;
- (id)CKPropertiesDescription;
- (int)authPutType;
@end

@implementation CKDAssetZoneKey

- (CKDAssetZoneKey)initWithDestinationZoneID:(id)d destinationDatabaseScope:(int64_t)scope usesMMCSEncryptionV2:(id)v2 sourceZoneID:(id)iD sourceDatabaseScope:(int64_t)databaseScope isPackageRereference:(BOOL)rereference
{
  dCopy = d;
  v2Copy = v2;
  iDCopy = iD;
  v21.receiver = self;
  v21.super_class = CKDAssetZoneKey;
  v18 = [(CKDAssetZoneKey *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_destinationZoneID, d);
    v19->_destinationDatabaseScope = scope;
    v19->_useMMCSEncryptionV2 = v2Copy;
    objc_storeStrong(&v19->_sourceZoneID, iD);
    v19->_sourceDatabaseScope = databaseScope;
    v19->_isPackageRereference = rereference;
  }

  return v19;
}

- (int)authPutType
{
  if (!self->_sourceZoneID)
  {
    return 1;
  }

  if (objc_msgSend_isCrossOwner(self, a2, v2))
  {
    return 3;
  }

  return 2;
}

- (BOOL)isCrossOwner
{
  sourceZoneID = self->_sourceZoneID;
  if (sourceZoneID)
  {
    destinationZoneID = self->_destinationZoneID;
    if (destinationZoneID)
    {
      LOBYTE(sourceZoneID) = objc_msgSend_hasSameOwnerAs_(sourceZoneID, a2, destinationZoneID) ^ 1;
    }

    else
    {
      LOBYTE(sourceZoneID) = 0;
    }
  }

  return sourceZoneID;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_destinationZoneID(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"destinationZoneID=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v11 = MEMORY[0x277CCACA8];
  objc_msgSend_destinationDatabaseScope(self, v12, v13);
  v14 = CKDatabaseScopeString();
  v16 = objc_msgSend_stringWithFormat_(v11, v15, @"destinationDatabaseScope=%@", v14);
  objc_msgSend_addObject_(v3, v17, v16);

  v18 = MEMORY[0x277CCACA8];
  v21 = objc_msgSend_sourceZoneID(self, v19, v20);
  v23 = objc_msgSend_stringWithFormat_(v18, v22, @"sourceZoneID=%@", v21);
  objc_msgSend_addObject_(v3, v24, v23);

  v25 = MEMORY[0x277CCACA8];
  objc_msgSend_sourceDatabaseScope(self, v26, v27);
  v28 = CKDatabaseScopeString();
  v30 = objc_msgSend_stringWithFormat_(v25, v29, @"sourceDatabaseScope=%@", v28);
  objc_msgSend_addObject_(v3, v31, v30);

  v33 = objc_msgSend_componentsJoinedByString_(v3, v32, @", ");

  return v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      destinationDatabaseScope = self->_destinationDatabaseScope;
      if (destinationDatabaseScope != objc_msgSend_destinationDatabaseScope(v5, v7, v8))
      {
        goto LABEL_12;
      }

      sourceDatabaseScope = self->_sourceDatabaseScope;
      if (sourceDatabaseScope != objc_msgSend_sourceDatabaseScope(v5, v9, v10))
      {
        goto LABEL_12;
      }

      isPackageRereference = self->_isPackageRereference;
      if (isPackageRereference == objc_msgSend_isPackageRereference(v5, v12, v13) && (destinationZoneID = self->_destinationZoneID, v16 = v5->_destinationZoneID, CKObjectsAreBothNilOrEqual()) && (sourceZoneID = self->_sourceZoneID, v18 = v5->_sourceZoneID, CKObjectsAreBothNilOrEqual()) && (cloneContext = self->_cloneContext, v20 = v5->_cloneContext, CKObjectsAreBothNilOrEqual()))
      {
        useMMCSEncryptionV2 = self->_useMMCSEncryptionV2;
        v22 = v5->_useMMCSEncryptionV2;
        v23 = CKObjectsAreBothNilOrEqual();
      }

      else
      {
LABEL_12:
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

@end