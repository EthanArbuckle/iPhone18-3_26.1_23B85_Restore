@interface CKDPCSMemoryCacheEntry
- (CKDPCSMemoryCacheEntry)init;
- (id)CKPropertiesDescription;
@end

@implementation CKDPCSMemoryCacheEntry

- (CKDPCSMemoryCacheEntry)init
{
  v7.receiver = self;
  v7.super_class = CKDPCSMemoryCacheEntry;
  v4 = [(CKDPCSMemoryCacheEntry *)&v7 init];
  if (v4)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v2, v3);
    v4->_lastAccess = v5;
  }

  return v4;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 2);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_pcsData(self, v5, v6);
  v10 = objc_msgSend_itemID(v7, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"PCSItem=%@", v10);
  objc_msgSend_addObject_(v3, v13, v12);

  v14 = MEMORY[0x277CCACA8];
  objc_msgSend_lastAccess(self, v15, v16);
  v19 = objc_msgSend_stringWithFormat_(v14, v17, @"lastAccess=%0.0f", v18);
  objc_msgSend_addObject_(v3, v20, v19);

  v22 = objc_msgSend_componentsJoinedByString_(v3, v21, @", ");

  return v22;
}

@end