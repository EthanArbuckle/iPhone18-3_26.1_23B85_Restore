@interface CKDIdentityCache
+ (CKDIdentityCache)cacheWithDeviceContext:(id)context;
- (id)cachedIdentityForLookupInfo:(id)info container:(id)container;
- (void)cacheUserIdentity:(id)identity forLookupInfo:(id)info container:(id)container;
- (void)createTables;
- (void)removeCachedValueForLookupInfo:(id)info container:(id)container;
@end

@implementation CKDIdentityCache

+ (CKDIdentityCache)cacheWithDeviceContext:(id)context
{
  v4 = objc_msgSend_deviceScopedDatabase(context, a2, context);
  v6 = objc_msgSend_tableGroupInDatabase_withName_error_(self, v5, v4, @"IdentityCache", 0);

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

- (id)cachedIdentityForLookupInfo:(id)info container:(id)container
{
  containerCopy = container;
  infoCopy = info;
  v10 = objc_msgSend_cache(self, v8, v9);
  v12 = objc_msgSend_cachedIdentityForLookupInfo_container_(v10, v11, infoCopy, containerCopy);

  return v12;
}

- (void)removeCachedValueForLookupInfo:(id)info container:(id)container
{
  containerCopy = container;
  infoCopy = info;
  v11 = objc_msgSend_cache(self, v8, v9);
  objc_msgSend_deleteUserIdentityForLookupInfo_container_(v11, v10, infoCopy, containerCopy);
}

- (void)cacheUserIdentity:(id)identity forLookupInfo:(id)info container:(id)container
{
  identityCopy = identity;
  infoCopy = info;
  containerCopy = container;
  v12 = objc_msgSend_cache(self, v10, v11);
  v14 = v12;
  if (identityCopy)
  {
    v16 = objc_msgSend_insertUserIdentity_forLookupInfo_container_(v12, v13, identityCopy, infoCopy, containerCopy);
    if (v16 && objc_msgSend_CKIsUniqueConstraintError_(MEMORY[0x277CCA9B8], v15, v16))
    {
      objc_msgSend_deleteUserIdentityForLookupInfo_container_(v14, v17, infoCopy, containerCopy);
      v19 = objc_msgSend_insertUserIdentity_forLookupInfo_container_(v14, v18, identityCopy, infoCopy, containerCopy);
    }
  }

  else
  {
    objc_msgSend_deleteUserIdentityForLookupInfo_container_(v12, v13, infoCopy, containerCopy);
  }
}

@end