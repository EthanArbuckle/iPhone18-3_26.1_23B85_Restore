@interface CKDIdentityCache
+ (CKDIdentityCache)cacheWithDeviceContext:(id)a3;
- (id)cachedIdentityForLookupInfo:(id)a3 container:(id)a4;
- (void)cacheUserIdentity:(id)a3 forLookupInfo:(id)a4 container:(id)a5;
- (void)createTables;
- (void)removeCachedValueForLookupInfo:(id)a3 container:(id)a4;
@end

@implementation CKDIdentityCache

+ (CKDIdentityCache)cacheWithDeviceContext:(id)a3
{
  v4 = objc_msgSend_deviceScopedDatabase(a3, a2, a3);
  v6 = objc_msgSend_tableGroupInDatabase_withName_error_(a1, v5, v4, @"IdentityCache", 0);

  return v6;
}

- (void)createTables
{
  v14.receiver = self;
  v14.super_class = CKDIdentityCache;
  [(CKSQLiteTableGroup *)&v14 createTables];
  v5 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v3, v4);
  objc_msgSend_publicIdentitiesExpirationTimeout(v5, v6, v7);
  v9 = v8;

  v10 = [CKDIdentityCacheTable alloc];
  v12 = objc_msgSend_initWithLogicalTableName_entryCountLimit_dataSizeLimit_expirationTime_expireDelay_(v10, v11, @"cache", 0, 0, v9, 60.0);
  objc_msgSend_addTable_(self, v13, v12);
}

- (id)cachedIdentityForLookupInfo:(id)a3 container:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_cache(self, v8, v9);
  v12 = objc_msgSend_cachedIdentityForLookupInfo_container_(v10, v11, v7, v6);

  return v12;
}

- (void)removeCachedValueForLookupInfo:(id)a3 container:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_cache(self, v8, v9);
  objc_msgSend_deleteUserIdentityForLookupInfo_container_(v11, v10, v7, v6);
}

- (void)cacheUserIdentity:(id)a3 forLookupInfo:(id)a4 container:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_cache(self, v10, v11);
  v14 = v12;
  if (v20)
  {
    v16 = objc_msgSend_insertUserIdentity_forLookupInfo_container_(v12, v13, v20, v8, v9);
    if (v16 && objc_msgSend_CKIsUniqueConstraintError_(MEMORY[0x277CCA9B8], v15, v16))
    {
      objc_msgSend_deleteUserIdentityForLookupInfo_container_(v14, v17, v8, v9);
      v19 = objc_msgSend_insertUserIdentity_forLookupInfo_container_(v14, v18, v20, v8, v9);
    }
  }

  else
  {
    objc_msgSend_deleteUserIdentityForLookupInfo_container_(v12, v13, v8, v9);
  }
}

@end