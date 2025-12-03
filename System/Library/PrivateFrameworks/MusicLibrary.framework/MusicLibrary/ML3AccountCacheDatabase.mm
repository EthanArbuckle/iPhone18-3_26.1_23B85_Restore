@interface ML3AccountCacheDatabase
- (BOOL)getPropertiesForDSID:(unint64_t)d appleID:(id *)iD altDSID:(id *)sID;
- (BOOL)setAppleID:(id)d altDSID:(id)iD forDSID:(unint64_t)sID;
- (ML3AccountCacheDatabase)initWithLibrary:(id)library;
- (id)_cacheEntryForDSID:(unint64_t)d;
- (id)appleIDForDSID:(unint64_t)d;
- (void)_setCacheEntry:(id)entry forDSID:(unint64_t)d;
@end

@implementation ML3AccountCacheDatabase

- (void)_setCacheEntry:(id)entry forDSID:(unint64_t)d
{
  entryCopy = entry;
  accessQueue = self->accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ML3AccountCacheDatabase__setCacheEntry_forDSID___block_invoke;
  block[3] = &unk_278765770;
  v10 = entryCopy;
  dCopy = d;
  block[4] = self;
  v8 = entryCopy;
  dispatch_sync(accessQueue, block);
}

void __50__ML3AccountCacheDatabase__setCacheEntry_forDSID___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

- (id)_cacheEntryForDSID:(unint64_t)d
{
  v53 = *MEMORY[0x277D85DE8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__25156;
  v45 = __Block_byref_object_dispose__25157;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__25156;
  v39 = __Block_byref_object_dispose__25157;
  v40 = 0;
  accessQueue = self->accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ML3AccountCacheDatabase__cacheEntryForDSID___block_invoke;
  block[3] = &unk_2787656D0;
  block[4] = self;
  block[5] = &v41;
  block[6] = d;
  dispatch_sync(accessQueue, block);
  v6 = v42[5];
  if (!v6)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__25156;
    v32 = __Block_byref_object_dispose__25157;
    v33 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__25156;
    v26 = __Block_byref_object_dispose__25157;
    v27 = 0;
    library = self->_library;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __46__ML3AccountCacheDatabase__cacheEntryForDSID___block_invoke_2;
    v21[3] = &unk_278765720;
    v21[7] = &v22;
    v21[8] = d;
    v21[4] = self;
    v21[5] = &v35;
    v21[6] = &v28;
    [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:0 withBlock:v21];
    if (!v36[5])
    {
      if ([v29[5] length] && !objc_msgSend(v23[5], "length"))
      {
        v8 = +[ML3AccountStore defaultStore];
        v20 = 0;
        v9 = [v8 altDSIDForAccountWithDSID:d options:1 error:&v20];
        v10 = v20;
        v11 = v23[5];
        v23[5] = v9;

        if (v10)
        {
          v12 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            selfCopy = self;
            v49 = 2048;
            dCopy = d;
            v51 = 2114;
            v52 = v10;
            _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to resolve altDSID for DSID %lld. err=%{public}@", buf, 0x20u);
          }
        }

        v13 = self->_library;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __46__ML3AccountCacheDatabase__cacheEntryForDSID___block_invoke_43;
        v19[3] = &unk_278765748;
        v19[5] = &v22;
        v19[6] = d;
        v19[4] = self;
        [(ML3MusicLibrary *)v13 databaseConnectionAllowingWrites:1 withBlock:v19];
      }

      v14 = [ML3AccountCacheEntry alloc];
      v15 = [(ML3AccountCacheEntry *)v14 initWithAppleID:v29[5] altDSID:v23[5]];
      v16 = v42[5];
      v42[5] = v15;

      [(ML3AccountCacheDatabase *)self _setCacheEntry:v42[5] forDSID:d];
    }

    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(&v28, 8);
    v6 = v42[5];
  }

  v17 = v6;
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);

  return v17;
}

void __46__ML3AccountCacheDatabase__cacheEntryForDSID___block_invoke(void *a1)
{
  v2 = *(a1[4] + 8);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  v3 = [v2 objectForKey:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __46__ML3AccountCacheDatabase__cacheEntryForDSID___block_invoke_2(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 64);
  v5 = a2;
  v6 = [v3 numberWithUnsignedLongLong:v4];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [v5 executeQuery:@"SELECT apple_id withParameters:{alt_dsid FROM account where dsid=?", v7}];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__ML3AccountCacheDatabase__cacheEntryForDSID___block_invoke_3;
  v10[3] = &unk_2787656F8;
  v9 = *(a1 + 48);
  v11 = *(a1 + 32);
  v12 = v9;
  [v8 enumerateRowsWithBlock:v10];
}

void __46__ML3AccountCacheDatabase__cacheEntryForDSID___block_invoke_43(void *a1, void *a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  v4 = *(*(a1[5] + 8) + 40);
  if (!v4)
  {
    v4 = &stru_28408B690;
  }

  v24[0] = v4;
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithUnsignedLongLong:v3];
  v24[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v15 = 0;
  v9 = [v6 executeUpdate:@"UPDATE account SET alt_dsid=? where dsid=?" withParameters:v8 error:&v15];

  v10 = v15;
  if ((v9 & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[6];
      v13 = a1[4];
      v14 = *(*(a1[5] + 8) + 40);
      *buf = 138544130;
      v17 = v13;
      v18 = 2048;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to update the account database with DSID %lld, resolvedAltDSID %@. err=%{public}@", buf, 0x2Au);
    }
  }
}

void __46__ML3AccountCacheDatabase__cacheEntryForDSID___block_invoke_3(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v17 = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to query the account table. err=%{public}@", &v17, 0x16u);
    }

    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    *a4 = 1;
  }

  else
  {
    v11 = [v7 stringForColumnIndex:0];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [v7 stringForColumnIndex:1];
    v15 = *(a1[7] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (BOOL)getPropertiesForDSID:(unint64_t)d appleID:(id *)iD altDSID:(id *)sID
{
  v7 = [(ML3AccountCacheDatabase *)self _cacheEntryForDSID:d];
  v8 = v7;
  if (v7)
  {
    if (iD)
    {
      *iD = [v7 appleID];
    }

    if (sID)
    {
      *sID = [v8 altDSID];
    }
  }

  return v8 != 0;
}

- (id)appleIDForDSID:(unint64_t)d
{
  v5 = 0;
  [(ML3AccountCacheDatabase *)self getPropertiesForDSID:d appleID:&v5 altDSID:0];
  v3 = v5;

  return v3;
}

- (BOOL)setAppleID:(id)d altDSID:(id)iD forDSID:(unint64_t)sID
{
  v57 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3AccountCacheDatabase.m" lineNumber:65 description:@"appleID cannot be nil"];
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__25156;
  v49 = __Block_byref_object_dispose__25157;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__25156;
  v43 = __Block_byref_object_dispose__25157;
  v11 = iDCopy;
  v44 = v11;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__25156;
  v37 = __Block_byref_object_dispose__25157;
  v38 = [(ML3AccountCacheDatabase *)self _cacheEntryForDSID:sID];
  v12 = v34[5];
  if (!v12 || ([v12 appleID], (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v34[5], "appleID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", dCopy), v14, v13, (v15 & 1) == 0))
  {
    if (!v40[5])
    {
      v16 = +[ML3AccountStore defaultStore];
      v32 = 0;
      v17 = [v16 altDSIDForAccountWithDSID:sID options:1 error:&v32];
      v18 = v32;
      v19 = v40[5];
      v40[5] = v17;

      if (v18)
      {
        v20 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          selfCopy = self;
          v53 = 2048;
          sIDCopy = sID;
          v55 = 2114;
          v56 = v18;
          _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to resolve altDSID for DSID %lld. err=%{public}@", buf, 0x20u);
        }
      }
    }

    library = self->_library;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __54__ML3AccountCacheDatabase_setAppleID_altDSID_forDSID___block_invoke;
    v25[3] = &unk_2787656A8;
    sIDCopy2 = sID;
    v26 = dCopy;
    selfCopy2 = self;
    v28 = &v39;
    v29 = &v45;
    v30 = &v33;
    [(ML3MusicLibrary *)library databaseConnectionAllowingWrites:1 withBlock:v25];
  }

  v22 = v46[5] == 0;
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  return v22;
}

void __54__ML3AccountCacheDatabase_setAppleID_altDSID_forDSID___block_invoke(uint64_t a1, void *a2)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 72);
  v5 = a2;
  v6 = [v3 numberWithUnsignedLongLong:v4];
  v7 = *(a1 + 32);
  v26[0] = v6;
  v26[1] = v7;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  if (!v8)
  {
    v8 = &stru_28408B690;
  }

  v26[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v19 = 0;
  v10 = [v5 executeUpdate:@"REPLACE INTO account (dsid withParameters:apple_id error:{alt_dsid) VALUES (?, ?, ?)", v9, &v19}];

  v11 = v19;
  v12 = v19;

  if (v10)
  {
    v13 = [[ML3AccountCacheEntry alloc] initWithAppleID:*(a1 + 32) altDSID:*(*(*(a1 + 48) + 8) + 40)];
    v14 = *(*(a1 + 64) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    [*(a1 + 40) _setCacheEntry:*(*(*(a1 + 64) + 8) + 40) forDSID:*(a1 + 72)];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 40);
      v18 = *(a1 + 72);
      *buf = 138543874;
      v21 = v17;
      v22 = 2048;
      v23 = v18;
      v24 = 2114;
      v25 = v12;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to update the account database with DSID %lld. err=%{public}@", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
  }
}

- (ML3AccountCacheDatabase)initWithLibrary:(id)library
{
  libraryCopy = library;
  v13.receiver = self;
  v13.super_class = ML3AccountCacheDatabase;
  v6 = [(ML3AccountCacheDatabase *)&v13 init];
  if (v6)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    propertiesCache = v6->_propertiesCache;
    v6->_propertiesCache = dictionary;

    objc_storeStrong(&v6->_library, library);
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create("com.apple.medialibrary.ML3AccountCacheDatabase.operationQueue.accessQueue", v9);
    accessQueue = v6->accessQueue;
    v6->accessQueue = v10;
  }

  return v6;
}

@end