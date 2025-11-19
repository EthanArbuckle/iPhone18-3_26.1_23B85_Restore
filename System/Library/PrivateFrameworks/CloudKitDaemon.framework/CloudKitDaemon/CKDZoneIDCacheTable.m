@interface CKDZoneIDCacheTable
+ (id)dbProperties;
- (BOOL)removeRowID:(id)a3 error:(id *)a4;
- (CKDZoneIDCacheTable)init;
- (id)entryForZoneID:(id)a3 addIfNotFound:(BOOL)a4 error:(id *)a5;
- (id)zoneIDForRowID:(id)a3 error:(id *)a4;
@end

@implementation CKDZoneIDCacheTable

- (CKDZoneIDCacheTable)init
{
  v3.receiver = self;
  v3.super_class = CKDZoneIDCacheTable;
  return [(CKSQLiteCacheTable *)&v3 initWithLogicalTableName:@"ZoneIDCacheTable" entryCountLimit:0x2000 dataSizeLimit:0 expirationTime:0.0 expireDelay:86400.0];
}

+ (id)dbProperties
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"rowID";
  v5[1] = @"zoneIDString";
  v6[0] = &unk_2838C82B0;
  v6[1] = &unk_2838C82C8;
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, v5, 2);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)entryForZoneID:(id)a3 addIfNotFound:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_sqliteRepresentation(a3, a2, a3);
  v23 = @"zoneIDString";
  v24[0] = v8;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v24, &v23, 1);
  v22 = 0;
  v12 = objc_msgSend_entryWithValues_label_error_setupBlock_(self, v11, v10, off_27D719D30, &v22, &unk_28385C860);
  v13 = v22;

  if (v13)
  {
LABEL_2:
    v14 = 0;
    if (!a5)
    {
      goto LABEL_7;
    }

LABEL_6:
    v15 = v13;
    *a5 = v13;
    goto LABEL_7;
  }

  if (v12)
  {
LABEL_5:
    v14 = v12;
    v13 = 0;
    v12 = v14;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6)
  {
    v18 = [CKDZoneIDCacheEntry alloc];
    v12 = objc_msgSend_initWithZoneIDString_(v18, v19, v8);
    v21 = objc_msgSend_insertObject_(self, v20, v12);
    if (v21)
    {
      v13 = v21;
      goto LABEL_2;
    }

    goto LABEL_5;
  }

  v14 = 0;
  v13 = 0;
  v12 = 0;
  if (a5)
  {
    goto LABEL_6;
  }

LABEL_7:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)zoneIDForRowID:(id)a3 error:(id *)a4
{
  v18 = 0;
  v5 = objc_msgSend_entryWithPrimaryKey_error_(self, a2, a3, &v18);
  v8 = v18;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5 == 0;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_zoneIDString(v5, v6, v7);

    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x277CBC5F8]);
      v14 = objc_msgSend_zoneIDString(v5, v12, v13);
      v10 = objc_msgSend_initWithSqliteRepresentation_(v11, v15, v14);
    }
  }

  if (a4)
  {
    v16 = v8;
    *a4 = v8;
  }

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

@end