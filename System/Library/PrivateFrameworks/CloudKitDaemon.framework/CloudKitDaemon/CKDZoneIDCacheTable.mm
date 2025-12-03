@interface CKDZoneIDCacheTable
+ (id)dbProperties;
- (BOOL)removeRowID:(id)d error:(id *)error;
- (CKDZoneIDCacheTable)init;
- (id)entryForZoneID:(id)d addIfNotFound:(BOOL)found error:(id *)error;
- (id)zoneIDForRowID:(id)d error:(id *)error;
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

- (id)entryForZoneID:(id)d addIfNotFound:(BOOL)found error:(id *)error
{
  foundCopy = found;
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_sqliteRepresentation(d, a2, d);
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
    if (!error)
    {
      goto LABEL_7;
    }

LABEL_6:
    v15 = v13;
    *error = v13;
    goto LABEL_7;
  }

  if (v12)
  {
LABEL_5:
    v14 = v12;
    v13 = 0;
    v12 = v14;
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (foundCopy)
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
  if (error)
  {
    goto LABEL_6;
  }

LABEL_7:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)zoneIDForRowID:(id)d error:(id *)error
{
  v18 = 0;
  v5 = objc_msgSend_entryWithPrimaryKey_error_(self, a2, d, &v18);
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

  if (error)
  {
    v16 = v8;
    *error = v8;
  }

  return v10;
}

- (BOOL)removeRowID:(id)d error:(id *)error
{
  v6 = objc_msgSend_deletePrimaryKeyValue_(self, a2, d);
  if (v6 && objc_msgSend_CKIsNoMatchingRowError_(MEMORY[0x277CCA9B8], v5, v6))
  {

    v6 = 0;
  }

  if (error)
  {
    v7 = v6;
    *error = v6;
  }

  return v6 == 0;
}

@end