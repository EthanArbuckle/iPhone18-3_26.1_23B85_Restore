@interface CHFitnessAppBadgeManager
- (CHFitnessAppBadgeManager)init;
- (int64_t)_badgeCount;
- (int64_t)_loadBadgeCount;
- (void)_launchFitnessApp;
- (void)_storeBadgeCount:(int64_t)a3;
- (void)registerProvider:(id)a3;
- (void)requestBadgeUpdate;
- (void)unregisterProvider:(id)a3;
@end

@implementation CHFitnessAppBadgeManager

- (CHFitnessAppBadgeManager)init
{
  v8.receiver = self;
  v8.super_class = CHFitnessAppBadgeManager;
  v2 = [(CHFitnessAppBadgeManager *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    providers = v2->_providers;
    v2->_providers = v3;

    v5 = HKCreateSerialDispatchQueue();
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;
  }

  return v2;
}

- (void)registerProvider:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543362;
    v19 = v8;
    _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "FitnessAppBadgeManager registerProvider for  %{public}@", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __45__CHFitnessAppBadgeManager_registerProvider___block_invoke;
  v15 = &unk_278DF0230;
  v16 = self;
  v17 = v4;
  v10 = v4;
  dispatch_async(serialQueue, &v12);
  [(CHFitnessAppBadgeManager *)self requestBadgeUpdate:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)unregisterProvider:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CHFitnessAppBadgeManager_unregisterProvider___block_invoke;
  v7[3] = &unk_278DF0230;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)requestBadgeUpdate
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CHFitnessAppBadgeManager_requestBadgeUpdate__block_invoke;
  block[3] = &unk_278DF00F0;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

uint64_t __46__CHFitnessAppBadgeManager_requestBadgeUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _loadBadgeCount];
  result = [*(a1 + 32) _badgeCount];
  if (v2 != result)
  {
    [*(a1 + 32) _storeBadgeCount:result];
    v4 = *(a1 + 32);

    return [v4 _launchFitnessApp];
  }

  return result;
}

- (int64_t)_badgeCount
{
  v29 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_providers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v21;
    v9 = MEMORY[0x277CCC270];
    *&v5 = 134218242;
    v19 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 badgeCount];
        _HKInitializeLogging();
        v13 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v13;
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          *buf = v19;
          v25 = v12;
          v26 = 2114;
          v27 = v16;
          _os_log_impl(&dword_243CCD000, v14, OS_LOG_TYPE_DEFAULT, "FitnessAppBadgeManager got badge count of %zd from provider %{public}@", buf, 0x16u);
        }

        v7 += [v11 badgeCount];
      }

      v6 = [(NSHashTable *)v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)_loadBadgeCount
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"FitnessStoredBadgeCount"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_storeBadgeCount:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v4 setObject:v5 forKey:@"FitnessStoredBadgeCount"];

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "FitnessAppBadgeManager stored badge count: %ld", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_launchFitnessApp
{
  v11[2] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  v2 = *MEMORY[0x277D0AC40];
  v10[0] = *MEMORY[0x277D0ABF0];
  v10[1] = v2;
  v11[0] = MEMORY[0x277CBEC38];
  v3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"fitness-badging://"];
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v5 = [MEMORY[0x277D0AD60] optionsWithDictionary:v4];
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC270];
  if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_243CCD000, v6, OS_LOG_TYPE_DEFAULT, "FitnessAppBadgeManager launching app", v9, 2u);
  }

  v7 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  [v7 openApplication:@"com.apple.Fitness" withOptions:v5 completion:&__block_literal_global_0];

  v8 = *MEMORY[0x277D85DE8];
}

void __45__CHFitnessAppBadgeManager__launchFitnessApp__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], OS_LOG_TYPE_ERROR))
    {
      __45__CHFitnessAppBadgeManager__launchFitnessApp__block_invoke_cold_1(v3, v4);
    }
  }
}

void __45__CHFitnessAppBadgeManager__launchFitnessApp__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"com.apple.Fitness";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_243CCD000, a2, OS_LOG_TYPE_ERROR, "Failed to launch application %@ with error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end