@interface HDCacheDeleteCoordinator
- (HDCacheDeleteCoordinator)init;
- (id)purgeSpace:(int)a3 info:(id)a4;
- (id)queryPurgeableSpace:(int)a3 info:(id)a4;
- (void)activate;
@end

@implementation HDCacheDeleteCoordinator

- (HDCacheDeleteCoordinator)init
{
  v8.receiver = self;
  v8.super_class = HDCacheDeleteCoordinator;
  v2 = [(HDCacheDeleteCoordinator *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCDA88]);
    v4 = HKLogInfrastructure();
    v5 = [v3 initWithName:@"cache-delete-providers" loggingCategory:v4];
    providers = v2->_providers;
    v2->_providers = v5;
  }

  return v2;
}

- (void)activate
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__HDCacheDeleteCoordinator_activate__block_invoke;
  aBlock[3] = &unk_278624BF8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HDCacheDeleteCoordinator_activate__block_invoke_296;
  v7[3] = &unk_278624BF8;
  v7[4] = self;
  v4 = _Block_copy(v7);
  _HKInitializeLogging();
  v5 = HKLogInfrastructure();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "Registering CacheDelete callbacks", v6, 2u);
  }

  CacheDeleteRegisterInfoCallbacks();
}

uint64_t __36__HDCacheDeleteCoordinator_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Determining CacheDelete purgable", v8, 2u);
  }

  [*(a1 + 32) queryPurgeableSpace:a2 info:a3];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t __36__HDCacheDeleteCoordinator_activate__block_invoke_296(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _HKInitializeLogging();
  v6 = HKLogInfrastructure();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Determining CacheDelete purged", v8, 2u);
  }

  [*(a1 + 32) purgeSpace:a2 info:a3];
  return objc_claimAutoreleasedReturnValue();
}

void __36__HDCacheDeleteCoordinator_activate__block_invoke_297()
{
  _HKInitializeLogging();
  v0 = HKLogInfrastructure();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_228986000, v0, OS_LOG_TYPE_DEFAULT, "CacheDelete Cancel unsupported", v1, 2u);
  }
}

uint64_t __36__HDCacheDeleteCoordinator_activate__block_invoke_299()
{
  _HKInitializeLogging();
  v0 = HKLogInfrastructure();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_228986000, v0, OS_LOG_TYPE_DEFAULT, "CacheDelete Periodic unsupported", v2, 2u);
  }

  return 0;
}

- (id)queryPurgeableSpace:(int)a3 info:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  providers = self->_providers;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__HDCacheDeleteCoordinator_queryPurgeableSpace_info___block_invoke;
  v16[3] = &unk_278624C40;
  v18 = &v20;
  v19 = a3;
  v9 = v7;
  v17 = v9;
  [(HKSynchronousObserverSet *)providers notifyObservers:v16];
  _HKInitializeLogging();
  v10 = HKLogInfrastructure();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v21[3];
    *buf = 138543618;
    v27 = v9;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "CacheDelete purgeable amount for volume %{public}@ in bytes %llu ", buf, 0x16u);
  }

  v25[0] = v9;
  v24[0] = @"CACHE_DELETE_VOLUME";
  v24[1] = @"CACHE_DELETE_AMOUNT";
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v21[3]];
  v25[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __53__HDCacheDeleteCoordinator_queryPurgeableSpace_info___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 purgeableSpaceForUrgency:*(a1 + 48) volume:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

- (id)purgeSpace:(int)a3 info:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  providers = self->_providers;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__HDCacheDeleteCoordinator_purgeSpace_info___block_invoke;
  v16[3] = &unk_278624C40;
  v18 = &v20;
  v19 = a3;
  v9 = v7;
  v17 = v9;
  [(HKSynchronousObserverSet *)providers notifyObservers:v16];
  _HKInitializeLogging();
  v10 = HKLogInfrastructure();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v21[3];
    *buf = 138543618;
    v27 = v9;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "CacheDelete purged amount for volume %{public}@ in bytes: %llu", buf, 0x16u);
  }

  v25[0] = v9;
  v24[0] = @"CACHE_DELETE_VOLUME";
  v24[1] = @"CACHE_DELETE_AMOUNT";
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v21[3]];
  v25[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  _Block_object_dispose(&v20, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __44__HDCacheDeleteCoordinator_purgeSpace_info___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 purgeSpaceForUrgency:*(a1 + 48) volume:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

@end