@interface CKDAssetRecord
- (BOOL)isEmpty;
- (CKDAssetRecord)initWithRecordType:(id)type recordID:(id)d;
- (NSArray)allMMCSItems;
- (NSArray)allMMCSSectionItems;
- (id)CKPropertiesDescription;
- (id)allMMCSAndSectionItems;
- (id)allRecordKeys;
- (id)allRegularAndSectionAndRereferenceItems;
- (id)allRegularAndSectionAndRereferenceItemsWithRecordKey:(id)key;
- (id)allRereferenceMMCSPackageItems;
- (id)firstMMCSItemError;
- (id)firstMMCSSectionItemError;
- (unsigned)rerefSizeUpperBound;
- (unsigned)sizeUpperBound;
- (void)addMMCSItem:(id)item;
- (void)addMMCSSectionItem:(id)item;
- (void)addRereferencedMMCSPackageItem:(id)item;
@end

@implementation CKDAssetRecord

- (CKDAssetRecord)initWithRecordType:(id)type recordID:(id)d
{
  typeCopy = type;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = CKDAssetRecord;
  v9 = [(CKDAssetRecord *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_recordType, type);
    objc_storeStrong(&v10->_recordID, d);
    v11 = objc_opt_new();
    itemsByRecordKey = v10->_itemsByRecordKey;
    v10->_itemsByRecordKey = v11;

    v13 = objc_opt_new();
    rereferencedItemsByRecordKey = v10->_rereferencedItemsByRecordKey;
    v10->_rereferencedItemsByRecordKey = v13;

    v15 = objc_opt_new();
    sectionItemsByRecordKey = v10->_sectionItemsByRecordKey;
    v10->_sectionItemsByRecordKey = v15;
  }

  return v10;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_recordType(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"recordType=%@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  v11 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_recordID(self, v12, v13);
  v16 = objc_msgSend_stringWithFormat_(v11, v15, @"recordID=%@", v14);
  objc_msgSend_addObject_(v3, v17, v16);

  v18 = MEMORY[0x277CCACA8];
  v21 = objc_msgSend_sizeUpperBound(self, v19, v20);
  v23 = objc_msgSend_stringWithFormat_(v18, v22, @"sizeUpperBound=%lu", v21);
  objc_msgSend_addObject_(v3, v24, v23);

  if (objc_msgSend_isPackageSectionRecord(self, v25, v26))
  {
    v29 = MEMORY[0x277CCACA8];
    if (objc_msgSend_isPackageSectionRecord(self, v27, v28))
    {
      objc_msgSend_stringWithFormat_(v29, v30, @"isPackageSectionRecord=%@", @"YES");
    }

    else
    {
      objc_msgSend_stringWithFormat_(v29, v30, @"isPackageSectionRecord=%@", @"NO");
    }
    v31 = ;
    objc_msgSend_addObject_(v3, v32, v31);
  }

  v33 = objc_msgSend_componentsJoinedByString_(v3, v27, @", ");

  return v33;
}

- (void)addMMCSItem:(id)item
{
  itemCopy = item;
  v8 = objc_msgSend_package(itemCopy, v4, v5);
  if (v8 && (objc_msgSend_isTemporary(itemCopy, v6, v7) & 1) == 0)
  {
    __assert_rtn("[CKDAssetRecord addMMCSItem:]", "CKDAssetRecord.m", 53, "nil == item.package || item.isTemporary");
  }

  sizeUpperBoundNumber = self->_sizeUpperBoundNumber;
  self->_sizeUpperBoundNumber = 0;

  itemsByRecordKey = self->_itemsByRecordKey;
  v13 = objc_msgSend_recordKey(itemCopy, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(itemsByRecordKey, v14, v13);

  if (!v15)
  {
    v15 = objc_opt_new();
    v17 = self->_itemsByRecordKey;
    v20 = objc_msgSend_recordKey(itemCopy, v18, v19);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v21, v15, v20);
  }

  objc_msgSend_addObject_(v15, v16, itemCopy);
}

- (void)addRereferencedMMCSPackageItem:(id)item
{
  itemCopy = item;
  sizeUpperBoundNumber = self->_sizeUpperBoundNumber;
  self->_sizeUpperBoundNumber = 0;

  rereferencedItemsByRecordKey = self->_rereferencedItemsByRecordKey;
  v8 = objc_msgSend_recordKey(itemCopy, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(rereferencedItemsByRecordKey, v9, v8);

  if (!v10)
  {
    v10 = objc_opt_new();
    v12 = self->_rereferencedItemsByRecordKey;
    v15 = objc_msgSend_recordKey(itemCopy, v13, v14);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v16, v10, v15);
  }

  objc_msgSend_addObject_(v10, v11, itemCopy);
}

- (void)addMMCSSectionItem:(id)item
{
  itemCopy = item;
  v6 = objc_msgSend_package(itemCopy, v4, v5);
  if (!v6)
  {
    __assert_rtn("[CKDAssetRecord addMMCSSectionItem:]", "CKDAssetRecord.m", 76, "nil != item.package");
  }

  sizeUpperBoundNumber = self->_sizeUpperBoundNumber;
  self->_sizeUpperBoundNumber = 0;

  sectionItemsByRecordKey = self->_sectionItemsByRecordKey;
  v11 = objc_msgSend_recordKey(itemCopy, v9, v10);
  v13 = objc_msgSend_objectForKeyedSubscript_(sectionItemsByRecordKey, v12, v11);

  if (!v13)
  {
    v13 = objc_opt_new();
    v15 = self->_sectionItemsByRecordKey;
    v18 = objc_msgSend_recordKey(itemCopy, v16, v17);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v19, v13, v18);
  }

  objc_msgSend_addObject_(v13, v14, itemCopy);
}

- (unsigned)sizeUpperBound
{
  sizeUpperBoundNumber = self->_sizeUpperBoundNumber;
  if (!sizeUpperBoundNumber)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    itemsByRecordKey = self->_itemsByRecordKey;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_22514616C;
    v13[3] = &unk_278546770;
    v13[4] = &v14;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(itemsByRecordKey, a2, v13);
    sectionItemsByRecordKey = self->_sectionItemsByRecordKey;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2251461B0;
    v12[3] = &unk_278546770;
    v12[4] = &v14;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(sectionItemsByRecordKey, v7, v12);
    v9 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v8, *(v15 + 6));
    v10 = self->_sizeUpperBoundNumber;
    self->_sizeUpperBoundNumber = v9;

    _Block_object_dispose(&v14, 8);
    sizeUpperBoundNumber = self->_sizeUpperBoundNumber;
  }

  return objc_msgSend_unsignedLongLongValue(sizeUpperBoundNumber, a2, v2);
}

- (unsigned)rerefSizeUpperBound
{
  rerefSizeUpperBoundNumber = self->_rerefSizeUpperBoundNumber;
  if (!rerefSizeUpperBoundNumber)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    rereferencedItemsByRecordKey = self->_rereferencedItemsByRecordKey;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2251462E0;
    v10[3] = &unk_278546770;
    v10[4] = &v11;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(rereferencedItemsByRecordKey, a2, v10);
    v7 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v6, *(v12 + 6));
    v8 = self->_rerefSizeUpperBoundNumber;
    self->_rerefSizeUpperBoundNumber = v7;

    _Block_object_dispose(&v11, 8);
    rerefSizeUpperBoundNumber = self->_rerefSizeUpperBoundNumber;
  }

  return objc_msgSend_unsignedLongLongValue(rerefSizeUpperBoundNumber, a2, v2);
}

- (NSArray)allMMCSItems
{
  v4 = objc_msgSend_allKeys(self->_itemsByRecordKey, a2, v2);
  v6 = objc_msgSend_sortedArrayUsingComparator_(v4, v5, &unk_28385C740);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251463F8;
  v10[3] = &unk_2785467B8;
  v10[4] = self;
  v8 = objc_msgSend_CKFlatMap_(v6, v7, v10);

  return v8;
}

- (id)allRereferenceMMCSPackageItems
{
  v4 = objc_msgSend_allKeys(self->_rereferencedItemsByRecordKey, a2, v2);
  v6 = objc_msgSend_sortedArrayUsingComparator_(v4, v5, &unk_28385C760);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251464DC;
  v10[3] = &unk_2785467B8;
  v10[4] = self;
  v8 = objc_msgSend_CKFlatMap_(v6, v7, v10);

  return v8;
}

- (NSArray)allMMCSSectionItems
{
  v4 = objc_msgSend_allKeys(self->_sectionItemsByRecordKey, a2, v2);
  v6 = objc_msgSend_sortedArrayUsingComparator_(v4, v5, &unk_28385C780);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251465C0;
  v10[3] = &unk_2785467B8;
  v10[4] = self;
  v8 = objc_msgSend_CKFlatMap_(v6, v7, v10);

  return v8;
}

- (id)allRecordKeys
{
  v3 = objc_opt_new();
  v8 = objc_msgSend_allKeys(self->_itemsByRecordKey, v4, v5);
  if (v8)
  {
    objc_msgSend_addObjectsFromArray_(v3, v6, v8);
  }

  v9 = objc_msgSend_allKeys(self->_sectionItemsByRecordKey, v6, v7);

  if (v9)
  {
    objc_msgSend_addObjectsFromArray_(v3, v10, v9);
  }

  v12 = objc_msgSend_allKeys(self->_rereferencedItemsByRecordKey, v10, v11);

  if (v12)
  {
    objc_msgSend_addObjectsFromArray_(v3, v13, v12);
  }

  v15 = objc_msgSend_allObjects(v3, v13, v14);
  v18 = objc_msgSend_mutableCopy(v15, v16, v17);

  v20 = objc_msgSend_sortedArrayUsingComparator_(v18, v19, &unk_28385C7A0);

  return v18;
}

- (id)allMMCSAndSectionItems
{
  v4 = objc_msgSend_allRecordKeys(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22514676C;
  v8[3] = &unk_2785467B8;
  v8[4] = self;
  v6 = objc_msgSend_CKFlatMap_(v4, v5, v8);

  return v6;
}

- (id)allRegularAndSectionAndRereferenceItemsWithRecordKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_new();
  v8 = objc_msgSend_objectForKeyedSubscript_(self->_itemsByRecordKey, v6, keyCopy);
  if (v8)
  {
    objc_msgSend_addObjectsFromArray_(v5, v7, v8);
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(self->_sectionItemsByRecordKey, v7, keyCopy);

  if (v9)
  {
    objc_msgSend_addObjectsFromArray_(v5, v10, v9);
  }

  v11 = objc_msgSend_objectForKeyedSubscript_(self->_rereferencedItemsByRecordKey, v10, keyCopy);

  if (v11)
  {
    objc_msgSend_addObjectsFromArray_(v5, v12, v11);
  }

  return v5;
}

- (id)allRegularAndSectionAndRereferenceItems
{
  v4 = objc_msgSend_allRecordKeys(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22514699C;
  v8[3] = &unk_2785467B8;
  v8[4] = self;
  v6 = objc_msgSend_CKFlatMap_(v4, v5, v8);

  return v6;
}

- (id)firstMMCSItemError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_225073EE0;
  v10 = sub_2250734FC;
  v11 = 0;
  itemsByRecordKey = self->_itemsByRecordKey;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225146BB4;
  v5[3] = &unk_278546770;
  v5[4] = &v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(itemsByRecordKey, a2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)firstMMCSSectionItemError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_225073EE0;
  v10 = sub_2250734FC;
  v11 = 0;
  sectionItemsByRecordKey = self->_sectionItemsByRecordKey;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_225146DB4;
  v5[3] = &unk_278546770;
  v5[4] = &v6;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(sectionItemsByRecordKey, a2, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isEmpty
{
  v4 = objc_msgSend_count(self->_sectionItemsByRecordKey, a2, v2);
  v7 = objc_msgSend_count(self->_itemsByRecordKey, v5, v6) + v4;
  return v7 + objc_msgSend_count(self->_rereferencedItemsByRecordKey, v8, v9) == 0;
}

@end