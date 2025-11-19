@interface CKDAccountStore
+ (CKDAccountStore)sharedAccountStore;
- (ACAccount)primaryAccount;
- (CKDAccountStore)init;
- (CKDAccountStore)initWithAccountStore:(id)a3;
- (CKDAccountStoreDelegate)delegate;
- (NSArray)cachedAccounts;
- (id)_accountForKey:(id)a3 matchBlock:(id)a4 createBlock:(id)a5;
- (id)_primaryAccount;
- (id)accountWithAltDSID:(id)a3;
- (id)accountWithIdentifier:(id)a3;
- (id)primaryAccountWithPersonaIdentifier:(id)a3;
- (unint64_t)countLimit;
- (void)cache:(id)a3 willEvictObject:(id)a4;
- (void)invalidateCache;
- (void)setCountLimit:(unint64_t)a3;
@end

@implementation CKDAccountStore

+ (CKDAccountStore)sharedAccountStore
{
  if (qword_280D58088 != -1)
  {
    dispatch_once(&qword_280D58088, &unk_28385C400);
  }

  v3 = qword_280D58080;

  return v3;
}

- (ACAccount)primaryAccount
{
  v4 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], a2, v2);
  objc_msgSend_isDataSeparated(v4, v5, v6);
  if (CKBoolFromCKTernary())
  {
    v9 = objc_msgSend_identifier(v4, v7, v8);
    v11 = objc_msgSend_primaryAccountWithPersonaIdentifier_(self, v10, v9);
  }

  else
  {
    v11 = objc_msgSend__primaryAccount(self, v7, v8);
  }

  return v11;
}

- (id)_primaryAccount
{
  v4 = objc_msgSend_null(MEMORY[0x277CBEB68], a2, v2);
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_225073E60;
  v10[4] = sub_2250734BC;
  v11 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22511295C;
  v9[3] = &unk_278545AF8;
  v9[4] = self;
  v9[5] = v10;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_225075CC8;
  v8[3] = &unk_278545B20;
  v8[4] = self;
  v8[5] = v10;
  v6 = objc_msgSend__accountForKey_matchBlock_createBlock_(self, v5, v4, v9, v8);
  _Block_object_dispose(v10, 8);

  return v6;
}

- (CKDAccountStore)init
{
  v4 = objc_msgSend_currentProcess(CKDDaemonProcess, a2, v2);
  v7 = objc_msgSend_processType(v4, v5, v6);

  if ((v7 | 2) == 2)
  {
    v9 = objc_alloc(MEMORY[0x277CB8F48]);
    v12 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v10, v11);
    v15 = objc_msgSend_bundleIdentifier(v12, v13, v14);
    v17 = objc_msgSend_initWithEffectiveBundleID_(v9, v16, v15);
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_msgSend_initWithAccountStore_(self, v8, v17);

  return v18;
}

- (CKDAccountStore)initWithAccountStore:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CKDAccountStore;
  v6 = [(CKDAccountStore *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v7->_cache;
    v7->_cache = v8;

    objc_msgSend_setName_(v7->_cache, v10, @"com.apple.cloudkit.accountStore");
    objc_msgSend_setCountLimit_(v7->_cache, v11, 16);
    objc_msgSend_setMinimumObjectCount_(v7->_cache, v12, 1);
    objc_msgSend_setDelegate_(v7->_cache, v13, v7);
  }

  return v7;
}

- (unint64_t)countLimit
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    cache = v2->_cache;
  }

  else
  {
    cache = 0;
  }

  v4 = cache;
  v7 = objc_msgSend_countLimit(v4, v5, v6);

  objc_sync_exit(v2);
  return v7;
}

- (void)setCountLimit:(unint64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj)
  {
    cache = obj->_cache;
  }

  else
  {
    cache = 0;
  }

  v5 = cache;
  objc_msgSend_setCountLimit_(v5, v6, a3);

  objc_sync_exit(obj);
}

- (NSArray)cachedAccounts
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2)
  {
    cache = v2->_cache;
  }

  else
  {
    cache = 0;
  }

  v4 = cache;
  v7 = objc_msgSend_allObjects(v4, v5, v6);

  objc_sync_exit(v2);

  return v7;
}

- (id)primaryAccountWithPersonaIdentifier:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CKDAccountStore.m", 118, @"Invalid parameter not satisfying: %@", @"persona");
  }

  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"persona:%@", v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_225112BA0;
  v17[3] = &unk_278545B48;
  v18 = v7;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_225112C14;
  v15[3] = &unk_278545B70;
  v15[4] = self;
  v16 = v18;
  v9 = v18;
  v11 = objc_msgSend__accountForKey_matchBlock_createBlock_(self, v10, v8, v17, v15);

  return v11;
}

- (id)accountWithIdentifier:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CKDAccountStore.m", 131, @"Invalid parameter not satisfying: %@", @"accountID");
  }

  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"identifier:%@", v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_225112EE8;
  v17[3] = &unk_278545B48;
  v18 = v7;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_225112F2C;
  v15[3] = &unk_278545B70;
  v15[4] = self;
  v16 = v18;
  v9 = v18;
  v11 = objc_msgSend__accountForKey_matchBlock_createBlock_(self, v10, v8, v17, v15);

  return v11;
}

- (id)accountWithAltDSID:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CKDAccountStore.m", 142, @"Invalid parameter not satisfying: %@", @"altDSID");
  }

  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"alt-dsid:%@", v7);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_225113110;
  v17[3] = &unk_278545B48;
  v18 = v7;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_225113154;
  v15[3] = &unk_278545B70;
  v15[4] = self;
  v16 = v18;
  v9 = v18;
  v11 = objc_msgSend__accountForKey_matchBlock_createBlock_(self, v10, v8, v17, v15);

  return v11;
}

- (id)_accountForKey:(id)a3 matchBlock:(id)a4 createBlock:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKDAccountStore.m", 161, @"Invalid parameter not satisfying: %@", @"key");

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v35 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v12, v13);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v35, v36, a2, self, @"CKDAccountStore.m", 162, @"Invalid parameter not satisfying: %@", @"createBlock");

LABEL_3:
  v15 = self;
  objc_sync_enter(v15);
  if (v15)
  {
    cache = v15->_cache;
  }

  else
  {
    cache = 0;
  }

  v17 = cache;
  v19 = objc_msgSend_objectForKey_(v17, v18, v9);

  if (v19)
  {
    goto LABEL_21;
  }

  if (v15)
  {
    v20 = v15->_cache;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v24 = objc_msgSend_allObjects(v21, v22, v23);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_225113544;
  v37[3] = &unk_278545B98;
  v38 = v10;
  v19 = objc_msgSend_CKFirstObjectPassingTest_(v24, v25, v37);

  if (v19)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v40 = v9;
      v41 = 2112;
      v42 = v19;
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v19 = v14[2](v14);
  if (v19)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v40 = v9;
      v41 = 2112;
      v42 = v19;
LABEL_25:
      _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, v27, buf, 0x16u);
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v15)
    {
LABEL_26:
      v28 = 0;
      goto LABEL_19;
    }

LABEL_18:
    v28 = v15->_cache;
LABEL_19:
    v29 = v28;
    objc_msgSend_setObject_forKey_(v29, v30, v19, v9);
  }

LABEL_21:
  objc_sync_exit(v15);

  v31 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)invalidateCache
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v9[0] = 0;
    _os_log_impl(&dword_22506F000, v3, OS_LOG_TYPE_INFO, "Invalidating account cache", v9, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  if (v4)
  {
    cache = v4->_cache;
  }

  else
  {
    cache = 0;
  }

  v6 = cache;
  objc_msgSend_removeAllObjects(v6, v7, v8);

  objc_sync_exit(v4);
}

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v8 = objc_msgSend_identifier(v5, v6, v7);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Account store will evict cached account: %@", &v15, 0xCu);
  }

  v12 = objc_msgSend_delegate(self, v10, v11);
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_accountStore_willEvictCachedAccount_(v12, v13, self, v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (CKDAccountStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end