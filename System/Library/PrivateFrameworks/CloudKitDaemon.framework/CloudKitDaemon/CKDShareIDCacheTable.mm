@interface CKDShareIDCacheTable
+ (id)dbProperties;
- (BOOL)removeRowID:(id)a3 error:(id *)a4;
- (CKDShareIDCacheTable)initWithZoneIDTable:(id)a3;
- (id)shareIDForRowID:(id)a3 error:(id *)a4;
- (id)shareIDsForZoneRowID:(id)a3 zoneID:(id)a4 error:(id *)a5;
- (unint64_t)removeSharesWithZoneRowID:(id)a3 error:(id *)a4;
- (unint64_t)removeSharesWithZoneRowID:(id)a3 exceptRowID:(id)a4 error:(id *)a5;
@end

@implementation CKDShareIDCacheTable

+ (id)dbProperties
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"rowID";
  v5[1] = @"zoneRowID";
  v6[0] = &unk_2838C82B0;
  v6[1] = &unk_2838C82E0;
  v5[2] = @"recordName";
  v6[2] = &unk_2838C82F8;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, v5, 3);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (CKDShareIDCacheTable)initWithZoneIDTable:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKDShareIDCacheTable;
  v6 = [(CKSQLiteCacheTable *)&v9 initWithLogicalTableName:@"ShareIDCacheTable" entryCountLimit:0x2000 dataSizeLimit:0 expirationTime:0.0 expireDelay:86400.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_zoneIDTable, a3);
  }

  return v7;
}

- (id)shareIDForRowID:(id)a3 error:(id *)a4
{
  v32 = 0;
  v6 = objc_msgSend_entryWithPrimaryKey_error_(self, a2, a3, &v32);
  v7 = v32;
  if (v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6 == 0;
  }

  if (v10)
  {
    v11 = v7;
    goto LABEL_14;
  }

  v12 = objc_msgSend_zoneRowID(v6, v8, v9);
  v11 = v12;
  if (!v12)
  {
LABEL_14:
    v15 = 0;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v15 = objc_msgSend_recordName(v6, v13, v14);

  if (!v15)
  {
    v11 = 0;
    if (!a4)
    {
      goto LABEL_16;
    }

LABEL_15:
    v29 = v11;
    *a4 = v11;
    goto LABEL_16;
  }

  v18 = objc_msgSend_zoneIDTable(self, v16, v17);
  v21 = objc_msgSend_zoneRowID(v6, v19, v20);
  v31 = 0;
  v23 = objc_msgSend_zoneIDForRowID_error_(v18, v22, v21, &v31);
  v11 = v31;

  v15 = 0;
  if (!v11 && v23)
  {
    v24 = objc_alloc(MEMORY[0x277CBC5D0]);
    v27 = objc_msgSend_recordName(v6, v25, v26);
    v15 = objc_msgSend_initWithRecordName_zoneID_(v24, v28, v27, v23);
  }

  if (a4)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v15;
}

- (id)shareIDsForZoneRowID:(id)a3 zoneID:(id)a4 error:(id *)a5
{
  v37[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v36 = @"zoneRowID";
  v37[0] = v8;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v37, &v36, 1);
  v14 = objc_msgSend_entriesWithValues_label_setupBlock_(self, v13, v12, off_27D719D60, &unk_28385C8A0);

  v15 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_nextObject(v14, v16, v17);
  if (v18)
  {
    v21 = v18;
    do
    {
      v22 = objc_alloc(MEMORY[0x277CBC5D0]);
      v25 = objc_msgSend_recordName(v21, v23, v24);
      v27 = objc_msgSend_initWithRecordName_zoneID_(v22, v26, v25, v9);

      objc_msgSend_addObject_(v10, v28, v27);
      v31 = objc_msgSend_nextObject(v14, v29, v30);

      v21 = v31;
    }

    while (v31);
  }

  v32 = objc_msgSend_error(v14, v19, v20);
  objc_autoreleasePoolPop(v15);
  if (a5 && v32)
  {
    v33 = v32;
    *a5 = v32;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)removeRowID:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_deletePrimaryKeyValue_(self, a2, a3);
  if (v6 && objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x277CCA9B8], v5, v6))
  {

    v6 = 0;
  }

  if (a4)
  {
    v7 = v6;
    *a4 = v6;
  }

  return v6 == 0;
}

- (unint64_t)removeSharesWithZoneRowID:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = @"zoneRowID";
  v18[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a3;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v6, v8, v18, &v17, 1);
  v16 = 0;
  v11 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v10, v9, off_27D719D78, &v16, &unk_28385C8C0);
  v12 = v16;

  if (a4)
  {
    v13 = v12;
    *a4 = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (unint64_t)removeSharesWithZoneRowID:(id)a3 exceptRowID:(id)a4 error:(id *)a5
{
  v21[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v20[0] = @"zoneRowID";
  v20[1] = @"rowID";
  v21[0] = v8;
  v21[1] = v9;
  v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v21, v20, 2);
  v19 = 0;
  v13 = objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v12, v11, off_27D719D90, &v19, &unk_28385C8E0);
  v14 = v19;
  v15 = v14;
  if (a5)
  {
    v16 = v14;
    *a5 = v15;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

@end