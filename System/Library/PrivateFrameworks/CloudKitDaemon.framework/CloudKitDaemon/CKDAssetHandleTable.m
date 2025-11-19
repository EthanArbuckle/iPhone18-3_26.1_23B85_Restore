@interface CKDAssetHandleTable
- (BOOL)assetHandleExistsInDatabase:(id)a3;
- (id)assetHandleWithItemID:(unint64_t)a3 error:(id *)a4;
- (id)assetHandleWithUUID:(id)a3;
- (id)interruptedAssetWithSignature:(id)a3 error:(id *)a4;
- (id)saveOrInsert:(id)a3;
- (id)selectProperties:(id)a3 inAssetHandlesWithStatus:(int64_t)a4;
@end

@implementation CKDAssetHandleTable

- (BOOL)assetHandleExistsInDatabase:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"ITEMID";
  v12[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v4, v6, v12, &v11, 1);

  LOBYTE(self) = objc_msgSend_countOfEntriesMatching_label_error_predicate_(self, v8, v7, off_27D7198F8, 0, &unk_28385C440) != 0;
  v9 = *MEMORY[0x277D85DE8];
  return self;
}

- (id)assetHandleWithUUID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CKDAssetHandle);
  objc_msgSend_setUUID_(v5, v6, v4);

  v8 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v7, 0, v5, &unk_2838C8C40, off_27D719910);
  if (v8)
  {

    v5 = 0;
  }

  return v5;
}

- (id)assetHandleWithItemID:(unint64_t)a3 error:(id *)a4
{
  v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], a2, a3);
  v8 = objc_msgSend_entryWithPrimaryKey_error_(self, v7, v6, a4);

  return v8;
}

- (id)saveOrInsert:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_itemID(v4, v5, v6);

  if (v7)
  {
    objc_msgSend_updateUsingObject_(self, v8, v4);
  }

  else
  {
    objc_msgSend_insertObject_(self, v8, v4);
  }
  v9 = ;

  return v9;
}

- (id)selectProperties:(id)a3 inAssetHandlesWithStatus:(int64_t)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = @"STATUS";
  v8 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, a4);
  v19[0] = v8;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v19, &v18, 1);

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225116BEC;
  v16[3] = &unk_278545C98;
  v17 = v6;
  v11 = v6;
  v13 = objc_msgSend_entriesWithValues_label_setupBlock_(self, v12, v10, off_27D7199A0, v16);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)interruptedAssetWithSignature:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_225073E70;
  v22 = sub_2250734C4;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225116DB4;
  v14[3] = &unk_278545CE0;
  v7 = v6;
  v15 = v7;
  v16 = self;
  v17 = &v18;
  v9 = objc_msgSend_performInTransaction_(self, v8, v14);
  v10 = v9;
  if (a4 && v9)
  {
    v11 = v9;
    *a4 = v10;
  }

  v12 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v12;
}

@end