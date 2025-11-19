@interface CKDPCSSQLCacheTable
+ (double)cacheValidTime;
+ (id)objectClassesForProperty:(id)a3;
- (CKDPCSSQLCacheTable)init;
- (id)PCSDataForID:(id)a3 databaseScope:(int64_t)a4 itemType:(unint64_t)a5 accountID:(id)a6 serviceName:(id)a7;
- (id)deletePCSDataForID:(id)a3 databaseScope:(int64_t)a4 itemType:(unint64_t)a5 accountID:(id)a6 serviceName:(id)a7;
- (id)deletePCSDataForShare:(id)a3 account:(id)a4 serviceName:(id)a5;
- (id)deletePCSDataForZone:(id)a3 account:(id)a4 serviceName:(id)a5;
@end

@implementation CKDPCSSQLCacheTable

- (CKDPCSSQLCacheTable)init
{
  v3 = objc_opt_class();
  objc_msgSend_cacheValidTime(v3, v4, v5);
  v7.receiver = self;
  v7.super_class = CKDPCSSQLCacheTable;
  return [CKSQLiteCacheTable initWithLogicalTableName:sel_initWithLogicalTableName_entryCountLimit_dataSizeLimit_expirationTime_expireDelay_ entryCountLimit:@"PCSCache" dataSizeLimit:1000 expirationTime:0x100000 expireDelay:?];
}

+ (double)cacheValidTime
{
  v3 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  objc_msgSend_PCSCacheValidTime(v3, v4, v5);
  v7 = v6;

  return v7;
}

+ (id)objectClassesForProperty:(id)a3
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___CKDPCSSQLCacheTable;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v10, sel_objectClassesForProperty_, v3);
  isEqualToString = objc_msgSend_isEqualToString_(v3, v5, @"CKDPCSData", v10.receiver, v10.super_class);

  if (isEqualToString)
  {
    v7 = objc_opt_class();
    objc_msgSend_addObject_(v4, v8, v7);
  }

  return v4;
}

- (id)deletePCSDataForZone:(id)a3 account:(id)a4 serviceName:(id)a5
{
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v12 = a5;
  v21[0] = @"ZONE";
  v21[1] = @"ACCOUNT";
  v22[0] = v8;
  v22[1] = v9;
  v21[2] = @"SERVICE";
  v13 = v12;
  if (!v12)
  {
    v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11);
  }

  v22[2] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v22, v21, 3);
  if (!v12)
  {
  }

  v20 = 0;
  objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v14, v15, off_27D71A7E0, &v20, &unk_28385DC00);
  v16 = v20;
  v17 = v20;

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)deletePCSDataForShare:(id)a3 account:(id)a4 serviceName:(id)a5
{
  v22[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v12 = a5;
  v21[0] = @"SHARE";
  v21[1] = @"ACCOUNT";
  v22[0] = v8;
  v22[1] = v9;
  v21[2] = @"SERVICE";
  v13 = v12;
  if (!v12)
  {
    v13 = objc_msgSend_null(MEMORY[0x277CBEB68], v10, v11);
  }

  v22[2] = v13;
  v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v10, v22, v21, 3);
  if (!v12)
  {
  }

  v20 = 0;
  objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v14, v15, off_27D71A7F8, &v20, &unk_28385DC20);
  v16 = v20;
  v17 = v20;

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)deletePCSDataForID:(id)a3 databaseScope:(int64_t)a4 itemType:(unint64_t)a5 accountID:(id)a6 serviceName:(id)a7
{
  v30[5] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v30[0] = v12;
  v29[0] = @"IDENTIFIER";
  v29[1] = @"SCOPE";
  v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v15, a4);
  v30[1] = v16;
  v29[2] = @"TYPE";
  v20 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v17, a5);
  v30[2] = v20;
  v30[3] = v13;
  v29[3] = @"ACCOUNT";
  v29[4] = @"SERVICE";
  v21 = v14;
  if (!v14)
  {
    v21 = objc_msgSend_null(MEMORY[0x277CBEB68], v18, v19);
  }

  v30[4] = v21;
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, v30, v29, 5);
  if (!v14)
  {
  }

  v28 = 0;
  objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v23, v22, off_27D71A810, &v28, &unk_28385DC40);
  v24 = v28;
  v25 = v28;

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

- (id)PCSDataForID:(id)a3 databaseScope:(int64_t)a4 itemType:(unint64_t)a5 accountID:(id)a6 serviceName:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(CKDPCSSQLCacheEntry);
  objc_msgSend_setIdentifier_(v15, v16, v12);
  v18 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v17, a4);
  objc_msgSend_setDatabaseScope_(v15, v19, v18);

  v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v20, a5);
  objc_msgSend_setItemType_(v15, v22, v21);

  objc_msgSend_setAccountID_(v15, v23, v13);
  objc_msgSend_setServiceName_(v15, v24, v14);
  v28 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v25, &unk_2838C8EF8, v15, &unk_2838C8F10, off_27D71A828);
  if (v28)
  {
    if (objc_msgSend_CKIsNoUniqueRowError_(MEMORY[0x277CCA9B8], v26, v28))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v29 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
      {
        *v34 = 0;
        _os_log_fault_impl(&dword_22506F000, v29, OS_LOG_TYPE_FAULT, "Found multiple matching PCS cache database entries. Removing them.", v34, 2u);
      }

      v31 = objc_msgSend_deletePCSDataForID_databaseScope_itemType_accountID_serviceName_(self, v30, v12, a4, a5, v13, v14);
    }

    v32 = 0;
  }

  else
  {
    v32 = objc_msgSend_CKDPCSData(v15, v26, v27);
  }

  return v32;
}

@end