@interface CKDIdentityCacheTable
+ (id)objectClassesForProperty:(id)a3;
- (id)cachedIdentityForLookupInfo:(id)a3 container:(id)a4;
- (id)insertUserIdentity:(id)a3 forLookupInfo:(id)a4 container:(id)a5;
- (id)valuesDictionaryForLookupInfo:(id)a3 container:(id)a4;
- (void)deleteUserIdentityForLookupInfo:(id)a3 container:(id)a4;
@end

@implementation CKDIdentityCacheTable

+ (id)objectClassesForProperty:(id)a3
{
  v4 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___CKDIdentityCacheTable;
  v5 = objc_msgSendSuper2(&v13, sel_objectClassesForProperty_, v4);
  if (objc_msgSend_isEqualToString_(v4, v6, @"lookupInfo"))
  {
    v8 = 0x277CBC7C8;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v4, v7, @"identity"))
    {
      goto LABEL_6;
    }

    v8 = 0x277CBC7C0;
  }

  v9 = *v8;
  v10 = objc_opt_class();
  objc_msgSend_addObject_(v5, v11, v10);
LABEL_6:

  return v5;
}

- (id)valuesDictionaryForLookupInfo:(id)a3 container:(id)a4
{
  v24[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v9 = objc_msgSend_containerID(v5, v7, v8);
  v12 = objc_msgSend_containerIdentifier(v9, v10, v11);

  v15 = objc_msgSend_directoryContext(v5, v13, v14);

  v18 = objc_msgSend_dataSeparationHash(v15, v16, v17);

  v23[0] = @"LOOKUPINFO";
  v23[1] = @"ID";
  v24[0] = v6;
  v24[1] = v12;
  v23[2] = @"HASH";
  v24[2] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v24, v23, 3);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)deleteUserIdentityForLookupInfo:(id)a3 container:(id)a4
{
  v5 = objc_msgSend_valuesDictionaryForLookupInfo_container_(self, a2, a3, a4);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2253AB6E4;
  v7[3] = &unk_27854D040;
  v7[4] = self;
  objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v6, v5, off_27D71A858, 0, v7);
}

- (id)insertUserIdentity:(id)a3 forLookupInfo:(id)a4 container:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(CKDIdentityCacheTableEntry);
  objc_msgSend_setLookupInfo_(v11, v12, v9);

  v15 = objc_msgSend_containerID(v8, v13, v14);
  v18 = objc_msgSend_containerIdentifier(v15, v16, v17);
  objc_msgSend_setContainerIdentifier_(v11, v19, v18);

  v22 = objc_msgSend_directoryContext(v8, v20, v21);

  v25 = objc_msgSend_dataSeparationHash(v22, v23, v24);
  objc_msgSend_setDataSeparationHash_(v11, v26, v25);

  v27 = MEMORY[0x277CBEAA8];
  v30 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v28, v29);
  objc_msgSend_publicIdentitiesExpirationTimeout(v30, v31, v32);
  v35 = objc_msgSend_dateWithTimeIntervalSinceNow_(v27, v33, v34);
  objc_msgSend_setExpirationDate_(v11, v36, v35);

  objc_msgSend_setIdentity_(v11, v37, v10);
  v39 = objc_msgSend_insertObject_(self, v38, v11);

  return v39;
}

- (id)cachedIdentityForLookupInfo:(id)a3 container:(id)a4
{
  v5 = objc_msgSend_valuesDictionaryForLookupInfo_container_(self, a2, a3, a4);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2253AB91C;
  v13[3] = &unk_278545C98;
  v13[4] = self;
  v7 = objc_msgSend_entryWithValues_label_error_setupBlock_(self, v6, v5, off_27D71A870, 0, v13);
  v10 = objc_msgSend_identity(v7, v8, v9);
  objc_msgSend_setIsCached_(v10, v11, 1);

  return v10;
}

@end