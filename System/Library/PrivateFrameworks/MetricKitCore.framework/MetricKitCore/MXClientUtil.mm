@interface MXClientUtil
- (BOOL)_hasClientInClientDictionary;
- (BOOL)_isClientAvailableFromPersistence;
- (BOOL)hasClientForBundleID:(id)a3;
- (BOOL)isClientAvailableForBundleID:(id)a3;
- (MXClientUtil)init;
- (id)_retrieveClientAvailablity;
- (id)_retrieveClientDictionary;
- (id)_retrieveTeamIDsDictionary;
- (id)allClients;
- (id)teamIDForBundleID:(id)a3;
- (void)_initClientCollection;
- (void)_persistClientAvailability;
- (void)_persistClientDictionary;
- (void)_persistTeamIDsDictionary;
- (void)_randomReportClientRegistrationForBundleID:(id)a3;
- (void)_updateClientAsAvailableFromPersistence;
- (void)_updateClientDictionaryWithBundleID:(id)a3;
- (void)_updateTeamIDsDictionaryWithTeamID:(id)a3 forBundleID:(id)a4;
- (void)registerClientForBundleID:(id)a3;
- (void)removeClientFromPersistenceForBundleID:(id)a3;
- (void)reportMetricKitUsageForBundleID:(id)a3;
@end

@implementation MXClientUtil

- (MXClientUtil)init
{
  v8.receiver = self;
  v8.super_class = MXClientUtil;
  v2 = [(MXClientUtil *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    v5 = os_log_create("com.apple.metrickit", "client.utility");
    logHandle = v2->_logHandle;
    v2->_logHandle = v5;

    if (!v2->_logHandle)
    {
      objc_storeStrong(&v2->_logHandle, MEMORY[0x277D86220]);
    }

    [(MXClientUtil *)v2 _initClientCollection];
    [(MXClientUtil *)v2 _initTeamCollection];
    [(MXClientUtil *)v2 _persistClientAvailability];
  }

  return v2;
}

- (void)_initClientCollection
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_258D6F000, a2, OS_LOG_TYPE_DEBUG, "Client Dict: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)registerClientForBundleID:(id)a3
{
  v4 = a3;
  [(MXClientUtil *)self _randomReportClientRegistrationForBundleID:v4];
  [(MXClientUtil *)self _updateClientDictionaryWithBundleID:v4];
}

- (BOOL)isClientAvailableForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MXClientUtil *)self clientDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

- (id)allClients
{
  v2 = [(MXClientUtil *)self clientDictionary];
  v3 = [v2 allKeys];

  return v3;
}

- (id)teamIDForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MXClientUtil *)self clientTeamIDs];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)hasClientForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MXClientUtil *)self clientDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (void)removeClientFromPersistenceForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MXClientUtil *)self clientDictionary];
  v6 = [v5 mutableCopy];

  [v6 removeObjectForKey:v4];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v6];
  [(MXClientUtil *)self setClientDictionary:v7];

  [(MXClientUtil *)self _persistClientDictionary];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    [(MXClientUtil *)v4 removeClientFromPersistenceForBundleID:?];
  }
}

- (void)reportMetricKitUsageForBundleID:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

id __48__MXClientUtil_reportMetricKitUsageForBundleID___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"scheduledClient";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __63__MXClientUtil_reportPayloadDeliveriesSuccessWithSuccessCount___block_invoke(uint64_t a1)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"clientDictionaryOverallCount";
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) clientDictionary];
  v4 = [v2 numberWithInteger:{objc_msgSend(v3, "count")}];
  v13[0] = v4;
  v12[1] = @"clientDictionarySuccessCount";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v13[1] = v5;
  v12[2] = @"clientDictionaryFailureCount";
  v6 = MEMORY[0x277CCABB0];
  v7 = [*(a1 + 32) clientDictionary];
  v8 = [v6 numberWithInteger:{objc_msgSend(v7, "count") - *(a1 + 40)}];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_retrieveClientDictionary
{
  v2 = CFPreferencesCopyValue(@"MXClientDataRetrieved", @"com.apple.metrickitd", @"mobile", *MEMORY[0x277CBF030]);

  return v2;
}

- (id)_retrieveTeamIDsDictionary
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"MXClientTeamID"];
  v3 = [v2 mutableCopy];

  return v3;
}

- (void)_persistClientAvailability
{
  if ([(MXClientUtil *)self _hasClientInClientDictionary])
  {

    [(MXClientUtil *)self _updateClientAsAvailableFromPersistence];
  }

  else
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_258D6F000, logHandle, OS_LOG_TYPE_INFO, "No clients found. Resetting client availability key\n", v4, 2u);
    }

    [(MXClientUtil *)self _updateClientAsNotAvailableFromPersistence];
  }
}

- (id)_retrieveClientAvailablity
{
  v2 = CFPreferencesCopyValue(@"MXClientsAvailable", @"com.apple.metrickitd", @"mobile", *MEMORY[0x277CBF010]);

  return v2;
}

- (BOOL)_hasClientInClientDictionary
{
  v3 = [(MXClientUtil *)self clientDictionary];
  v4 = [v3 count];

  if (v4)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      [(MXClientUtil *)logHandle _hasClientInClientDictionary];
    }
  }

  return v4 != 0;
}

- (BOOL)_isClientAvailableFromPersistence
{
  v2 = [(MXClientUtil *)self _retrieveClientAvailablity];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_updateClientDictionaryWithBundleID:(id)a3
{
  v4 = a3;
  v5 = [(MXClientUtil *)self clientDictionary];
  v8 = [v5 mutableCopy];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v8 setValue:v6 forKey:v4];

  v7 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8];
  [(MXClientUtil *)self setClientDictionary:v7];

  [(MXClientUtil *)self _persistClientDictionary];
}

- (void)_updateTeamIDsDictionaryWithTeamID:(id)a3 forBundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MXClientUtil *)self clientTeamIDs];
  v10 = [v8 mutableCopy];

  [v10 setValue:v7 forKey:v6];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v10];
  [(MXClientUtil *)self setClientTeamIDs:v9];

  [(MXClientUtil *)self _persistTeamIDsDictionary];
}

- (void)_updateClientAsAvailableFromPersistence
{
  if (![(MXClientUtil *)self _isClientAvailableFromPersistence])
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(MXClientUtil *)logHandle _updateClientAsAvailableFromPersistence];
    }

    [(MXClientUtil *)self _persistClientAvailabilityWithAvailability:1];
  }
}

- (void)_persistClientDictionary
{
  v2 = [(MXClientUtil *)self clientDictionary];
  v3 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"MXClientDataRetrieved", v2, @"com.apple.metrickitd", @"mobile", *MEMORY[0x277CBF030]);

  CFPreferencesSynchronize(@"com.apple.metrickitd", @"mobile", v3);
  _CFPreferencesFlushCachesForIdentifier();
  v4 = *MEMORY[0x277CBF020];

  _CFPreferencesFlushCachesForIdentifier();
}

- (void)_persistTeamIDsDictionary
{
  userDefaults = self->_userDefaults;
  v3 = [(MXClientUtil *)self clientTeamIDs];
  [(NSUserDefaults *)userDefaults setObject:v3 forKey:@"MXClientTeamID"];
}

- (void)_randomReportClientRegistrationForBundleID:(id)a3
{
  v3 = a3;
  if (arc4random_uniform(0x64u) <= 9)
  {
    v4 = v3;
    AnalyticsSendEventLazy();
  }
}

id __59__MXClientUtil__randomReportClientRegistrationForBundleID___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"bundleID";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)removeClientFromPersistenceForBundleID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_258D6F000, a2, OS_LOG_TYPE_DEBUG, "removing Application: %@ from clients", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end