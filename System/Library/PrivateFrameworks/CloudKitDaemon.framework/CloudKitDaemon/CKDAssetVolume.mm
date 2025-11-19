@interface CKDAssetVolume
- (id)CKPropertiesDescription;
@end

@implementation CKDAssetVolume

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 2);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_volumeIndex(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"volumeIndex=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v13 = objc_msgSend_volumeUUID(self, v11, v12);

  if (v13)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = objc_msgSend_volumeUUID(self, v14, v15);
    v20 = objc_msgSend_UUIDString(v17, v18, v19);
    v22 = objc_msgSend_stringWithFormat_(v16, v21, @"volumeUUID=%@", v20);
    objc_msgSend_addObject_(v3, v23, v22);
  }

  v24 = objc_msgSend_componentsJoinedByString_(v3, v14, @", ");

  return v24;
}

@end