@interface CKDZoneShareCacheTable
+ (id)dbProperties;
- (BOOL)addZoneShareID:(id)a3 error:(id *)a4;
- (BOOL)hasZoneID:(id)a3 error:(id *)a4;
- (BOOL)removeRowID:(id)a3 error:(id *)a4;
- (CKDZoneShareCacheTable)initWithShareIDTable:(id)a3;
- (id)entryForZoneID:(id)a3 error:(id *)a4;
- (id)shareIDForZoneID:(id)a3 error:(id *)a4;
@end

@implementation CKDZoneShareCacheTable

+ (id)dbProperties
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"zoneRowID";
  v5[1] = @"shareRowID";
  v6[0] = &unk_2838C82B0;
  v6[1] = &unk_2838C8310;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, v5, 2);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (CKDZoneShareCacheTable)initWithShareIDTable:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CKDZoneShareCacheTable;
  v6 = [(CKSQLiteCacheTable *)&v9 initWithLogicalTableName:@"ZoneShareTable" entryCountLimit:0x2000 dataSizeLimit:0 expirationTime:0.0 expireDelay:86400.0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shareIDTable, a3);
  }

  return v7;
}

- (id)entryForZoneID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_shareIDTable(self, v7, v8);
  v12 = objc_msgSend_zoneIDTable(v9, v10, v11);
  v22 = 0;
  v14 = objc_msgSend_rowIDForZoneID_addIfNotFound_error_(v12, v13, v6, 0, &v22);

  v15 = v22;
  v17 = 0;
  if (!v15 && v14)
  {
    v21 = 0;
    v18 = objc_msgSend_entryWithPrimaryKey_error_(self, v16, v14, &v21);
    v15 = v21;
    v17 = 0;
    if (!v15 && v18)
    {
      v17 = v18;
    }
  }

  if (a4)
  {
    v19 = v15;
    *a4 = v15;
  }

  return v17;
}

- (id)shareIDForZoneID:(id)a3 error:(id *)a4
{
  v24 = 0;
  v6 = objc_msgSend_entryForZoneID_error_(self, a2, a3, &v24);
  v7 = v24;
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
    goto LABEL_12;
  }

  v11 = objc_msgSend_shareRowID(v6, v8, v9);

  if (!v11)
  {
LABEL_12:
    v20 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v14 = objc_msgSend_shareIDTable(self, v12, v13);
  v17 = objc_msgSend_shareRowID(v6, v15, v16);
  v23 = 0;
  v19 = objc_msgSend_shareIDForRowID_error_(v14, v18, v17, &v23);
  v11 = v23;

  v20 = 0;
  if (!v11)
  {
    v20 = v19;
  }

  if (a4)
  {
LABEL_13:
    v21 = v11;
    *a4 = v11;
  }

LABEL_14:

  return v20;
}

- (BOOL)hasZoneID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_shareIDTable(self, v7, v8);
  v12 = objc_msgSend_zoneIDTable(v9, v10, v11);
  v21 = 0;
  v14 = objc_msgSend_rowIDForZoneID_addIfNotFound_error_(v12, v13, v6, 0, &v21);

  v15 = v21;
  hasEntryWithPrimaryKey_error = 0;
  if (!v15 && v14)
  {
    v20 = 0;
    hasEntryWithPrimaryKey_error = objc_msgSend_hasEntryWithPrimaryKey_error_(self, v16, v14, &v20);
    v15 = v20;
  }

  if (a4)
  {
    v18 = v15;
    *a4 = v15;
  }

  return hasEntryWithPrimaryKey_error;
}

- (BOOL)addZoneShareID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v9 = objc_msgSend_shareIDTable(self, v7, v8);
  v52 = 0;
  v11 = objc_msgSend_entryForShareID_addIfNotFound_error_(v9, v10, v6, 1, &v52);

  v12 = v52;
  if (v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11 == 0;
  }

  if (v15)
  {
    v16 = 0;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v17 = objc_msgSend_zoneRowID(v11, v13, v14);
  v51 = 0;
  v19 = objc_msgSend_entryWithPrimaryKey_error_(self, v18, v17, &v51);
  v12 = v51;

  if (v12)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v24 = objc_msgSend_rowID(v11, v20, v21);
  if (!v19)
  {
    v30 = [CKDZoneShareCacheEntry alloc];
    v33 = objc_msgSend_zoneRowID(v11, v31, v32);
    v36 = objc_msgSend_rowID(v11, v34, v35);
    v38 = objc_msgSend_initWithZoneRowID_shareRowID_(v30, v37, v33, v36);

    v12 = objc_msgSend_insertObject_(self, v39, v38);
    v40 = v12 == 0;
    goto LABEL_17;
  }

  v25 = objc_msgSend_shareRowID(v19, v22, v23);
  isEqual = objc_msgSend_isEqual_(v25, v26, v24);

  if ((isEqual & 1) == 0)
  {
    v38 = objc_msgSend_shareRowID(v19, v28, v29);
    objc_msgSend_setShareRowID_(v19, v41, v24);
    v43 = objc_msgSend_updateUsingObject_(self, v42, v19);
    if (v43)
    {
      v12 = v43;
      v16 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v46 = objc_msgSend_shareIDTable(self, v44, v45);
    v50 = 0;
    objc_msgSend_removeRowID_error_(v46, v47, v38, &v50);
    v12 = v50;

    v40 = v12 == 0;
LABEL_17:
    v16 = v40;
    goto LABEL_20;
  }

  v16 = 0;
  v12 = 0;
LABEL_21:

LABEL_22:
  if (a4)
  {
LABEL_23:
    v48 = v12;
    *a4 = v12;
  }

LABEL_24:

  return v16;
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

@end