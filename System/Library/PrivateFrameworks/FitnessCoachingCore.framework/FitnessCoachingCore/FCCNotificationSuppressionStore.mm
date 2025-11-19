@interface FCCNotificationSuppressionStore
- (BOOL)lastNotifiedSuppressionState;
- (BOOL)notificationsSuppressed;
- (FCCNotificationSuppressionStore)init;
- (FCCNotificationSuppressionStore)initWithDateProvider:(id)a3;
- (id)_requestsMap;
- (id)_userDefaults;
- (id)allRequests;
- (void)_requestsMap;
- (void)_updateStoredRequests:(id)a3;
- (void)addNotificationSuppressionRequest:(id)a3;
- (void)removeNotificationSuppressionRequest:(id)a3;
@end

@implementation FCCNotificationSuppressionStore

- (BOOL)notificationsSuppressed
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(FCCNotificationSuppressionStore *)self allRequests];
  v4 = [(FCCDateProvider *)self->_dateProvider coachingDate];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) expirationDate];
        v10 = [v9 hk_isAfterDate:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)allRequests
{
  v2 = [(FCCNotificationSuppressionStore *)self _requestsMap];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 allValues];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_requestsMap
{
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = [(FCCNotificationSuppressionStore *)self _userDefaults];
  v4 = [v3 dictionaryForKey:@"NotificationSuppressionRequests"];
  os_unfair_lock_unlock(&self->_unfairLock);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      [(FCCNotificationSuppressionStore *)v6 _requestsMap];
    }

    v5 = 0;
  }

  else
  {
    v5 = [v4 hk_map:&__block_literal_global];
  }

  return v5;
}

- (id)_userDefaults
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.FitnessCoaching"];

  return v2;
}

- (FCCNotificationSuppressionStore)init
{
  v3 = objc_alloc_init(FCCDateProvider);
  v4 = [(FCCNotificationSuppressionStore *)self initWithDateProvider:v3];

  return v4;
}

- (FCCNotificationSuppressionStore)initWithDateProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FCCNotificationSuppressionStore;
  v6 = [(FCCNotificationSuppressionStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateProvider, a3);
    v7->_unfairLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (void)addNotificationSuppressionRequest:(id)a3
{
  v4 = a3;
  v5 = [(FCCNotificationSuppressionStore *)self _requestsMap];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v11 = v8;

  v9 = [v4 identifier];
  [v11 setObject:v4 forKeyedSubscript:v9];

  v10 = [v11 copy];
  [(FCCNotificationSuppressionStore *)self _updateStoredRequests:v10];
}

- (void)removeNotificationSuppressionRequest:(id)a3
{
  v4 = a3;
  v5 = [(FCCNotificationSuppressionStore *)self _requestsMap];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v11 = v8;

  v9 = [v4 identifier];

  [v11 removeObjectForKey:v9];
  v10 = [v11 copy];
  [(FCCNotificationSuppressionStore *)self _updateStoredRequests:v10];
}

- (BOOL)lastNotifiedSuppressionState
{
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = [(FCCNotificationSuppressionStore *)self _userDefaults];
  v4 = [v3 BOOLForKey:@"NotificationSuppressionLastNotifiedState"];
  os_unfair_lock_unlock(&self->_unfairLock);

  return v4;
}

void __47__FCCNotificationSuppressionStore__requestsMap__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = a3;
  v8 = [[FCCNotificationSuppressionRequest alloc] initWithTransportData:v7];

  if (v8)
  {
    v6[2](v6, v9, v8);
  }
}

- (void)_updateStoredRequests:(id)a3
{
  v4 = a3;
  v6 = [(FCCNotificationSuppressionStore *)self _userDefaults];
  v5 = [v4 hk_map:&__block_literal_global_298];

  [v6 setObject:v5 forKey:@"NotificationSuppressionRequests"];
}

void __57__FCCNotificationSuppressionStore__updateStoredRequests___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v7 transportData];
  if (v9)
  {
    v8[2](v8, v6, v9);
  }

  else
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC290];
    if (os_log_type_enabled(*MEMORY[0x277CCC290], OS_LOG_TYPE_ERROR))
    {
      __57__FCCNotificationSuppressionStore__updateStoredRequests___block_invoke_cold_1(v7, v10);
    }
  }
}

- (void)_requestsMap
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_24B53B000, v1, OS_LOG_TYPE_ERROR, "Loaded suppression requests object is not a dictionary %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __57__FCCNotificationSuppressionStore__updateStoredRequests___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24B53B000, a2, OS_LOG_TYPE_ERROR, "Failed to create request data for request: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end