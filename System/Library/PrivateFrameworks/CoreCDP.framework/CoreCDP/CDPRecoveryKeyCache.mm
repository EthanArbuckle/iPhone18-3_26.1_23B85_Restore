@interface CDPRecoveryKeyCache
+ (id)sharedInstance;
- (BOOL)cacheRecoveryKey:(id)a3 forAltDSID:(id)a4 error:(id *)a5;
- (CDPRecoveryKeyCache)init;
- (id)fetchRecoveryKeyFromCacheForAltDSID:(id)a3;
- (void)deleteCache;
@end

@implementation CDPRecoveryKeyCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CDPRecoveryKeyCache sharedInstance];
  }

  v3 = sharedInstance_rKCache;

  return v3;
}

uint64_t __37__CDPRecoveryKeyCache_sharedInstance__block_invoke()
{
  sharedInstance_rKCache = objc_alloc_init(CDPRecoveryKeyCache);

  return MEMORY[0x1EEE66BB8]();
}

- (CDPRecoveryKeyCache)init
{
  v6.receiver = self;
  v6.super_class = CDPRecoveryKeyCache;
  v2 = [(CDPRecoveryKeyCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6985DF0]);
    keychainManager = v2->_keychainManager;
    v2->_keychainManager = v3;
  }

  return v2;
}

- (BOOL)cacheRecoveryKey:(id)a3 forAltDSID:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 dataUsingEncoding:4];
  v10 = [CDPKeychainItemDescriptor recoveryKeyDescriptorForAltDSID:v8];

  v11 = [objc_alloc(MEMORY[0x1E6985DE0]) initWithDescriptor:v10 value:v9];
  keychainManager = self->_keychainManager;
  v18 = 0;
  [(AAFKeychainManager *)keychainManager addOrUpdateKeychainItem:v11 error:&v18];
  v13 = v18;
  v14 = v13;
  if (v13)
  {
    if (a5)
    {
      v15 = v13;
      *a5 = v14;
    }
  }

  else
  {
    v16 = _CDPLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [CDPRecoveryKeyCache cacheRecoveryKey:v16 forAltDSID:? error:?];
    }
  }

  return v14 == 0;
}

- (id)fetchRecoveryKeyFromCacheForAltDSID:(id)a3
{
  v4 = [CDPKeychainItemDescriptor recoveryKeyDescriptorForAltDSID:a3];
  keychainManager = self->_keychainManager;
  v13 = 0;
  v6 = [(AAFKeychainManager *)keychainManager keychainItemForDescriptor:v4 error:&v13];
  v7 = v13;
  if (v7)
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPRecoveryKeyCache *)v7 fetchRecoveryKeyFromCacheForAltDSID:v8];
    }

    v9 = 0;
    goto LABEL_7;
  }

  v10 = [v6 value];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [v6 value];
    v9 = [v11 initWithData:v8 encoding:4];
LABEL_7:

    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)deleteCache
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DED99000, a2, OS_LOG_TYPE_DEBUG, "Cleared RK cache with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cacheRecoveryKey:(os_log_t)log forAltDSID:error:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = 0;
  _os_log_debug_impl(&dword_1DED99000, log, OS_LOG_TYPE_DEBUG, "Cached RK with error: %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)fetchRecoveryKeyFromCacheForAltDSID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch RK from cache: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end